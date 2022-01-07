
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int xcb_intern_atom_cookie_t ;
struct TYPE_8__ {scalar_t__ owner; } ;
typedef TYPE_1__ xcb_get_selection_owner_reply_t ;
typedef int xcb_get_selection_owner_cookie_t ;
typedef int uint32_t ;
struct TYPE_11__ {int black_pixel; } ;
struct TYPE_10__ {int visual_id; } ;
struct TYPE_9__ {int atom; } ;


 int DLOG (char*) ;
 int ELOG (char*,char*) ;
 int EXIT_FAILURE ;
 int XCB_ATOM_CARDINAL ;
 int XCB_ATOM_VISUALID ;
 int XCB_CURRENT_TIME ;
 int XCB_CW_BACK_PIXEL ;
 int XCB_CW_BORDER_PIXEL ;
 int XCB_CW_COLORMAP ;
 int XCB_CW_OVERRIDE_REDIRECT ;
 int XCB_PROP_MODE_REPLACE ;
 int XCB_WINDOW_CLASS_INPUT_OUTPUT ;
 size_t _NET_SYSTEM_TRAY_ORIENTATION ;
 int _NET_SYSTEM_TRAY_ORIENTATION_HORZ ;
 size_t _NET_SYSTEM_TRAY_VISUAL ;
 int * atoms ;
 int colormap ;
 int depth ;
 int exit (int ) ;
 int free (TYPE_1__*) ;
 int init_tray_colors () ;
 TYPE_6__* root_screen ;
 int screen ;
 scalar_t__ selwin ;
 int send_tray_clientmessage () ;
 int snprintf (char*,int ,char*,int) ;
 int strlen (char*) ;
 TYPE_2__* tray_reply ;
 TYPE_4__* visual_type ;
 int xcb_change_property (int ,int ,scalar_t__,int ,int ,int,int,int*) ;
 int xcb_connection ;
 int xcb_create_window (int ,int ,scalar_t__,int ,int,int,int,int,int ,int ,int,int,int*) ;
 scalar_t__ xcb_generate_id (int ) ;
 int xcb_get_selection_owner (int ,int ) ;
 TYPE_1__* xcb_get_selection_owner_reply (int ,int ,int *) ;
 int xcb_intern_atom (int ,int ,int ,char*) ;
 TYPE_2__* xcb_intern_atom_reply (int ,int ,int *) ;
 int xcb_root ;
 int xcb_set_selection_owner (int ,scalar_t__,int ,int ) ;

__attribute__((used)) static void init_tray(void) {
    DLOG("Initializing system tray functionality\n");

    char atomname[strlen("_NET_SYSTEM_TRAY_S") + 11];
    snprintf(atomname, strlen("_NET_SYSTEM_TRAY_S") + 11, "_NET_SYSTEM_TRAY_S%d", screen);
    xcb_intern_atom_cookie_t tray_cookie;
    if (tray_reply == ((void*)0))
        tray_cookie = xcb_intern_atom(xcb_connection, 0, strlen(atomname), atomname);


    selwin = xcb_generate_id(xcb_connection);
    uint32_t selmask = XCB_CW_BACK_PIXEL | XCB_CW_BORDER_PIXEL | XCB_CW_OVERRIDE_REDIRECT | XCB_CW_COLORMAP;
    uint32_t selval[] = {root_screen->black_pixel, root_screen->black_pixel, 1, colormap};
    xcb_create_window(xcb_connection,
                      depth,
                      selwin,
                      xcb_root,
                      -1, -1,
                      1, 1,
                      0,
                      XCB_WINDOW_CLASS_INPUT_OUTPUT,
                      visual_type->visual_id,
                      selmask,
                      selval);

    uint32_t orientation = _NET_SYSTEM_TRAY_ORIENTATION_HORZ;

    xcb_change_property(xcb_connection,
                        XCB_PROP_MODE_REPLACE,
                        selwin,
                        atoms[_NET_SYSTEM_TRAY_ORIENTATION],
                        XCB_ATOM_CARDINAL,
                        32,
                        1,
                        &orientation);
    xcb_change_property(xcb_connection,
                        XCB_PROP_MODE_REPLACE,
                        selwin,
                        atoms[_NET_SYSTEM_TRAY_VISUAL],
                        XCB_ATOM_VISUALID,
                        32,
                        1,
                        &visual_type->visual_id);

    init_tray_colors();

    if (tray_reply == ((void*)0)) {
        if (!(tray_reply = xcb_intern_atom_reply(xcb_connection, tray_cookie, ((void*)0)))) {
            ELOG("Could not get atom %s\n", atomname);
            exit(EXIT_FAILURE);
        }
    }

    xcb_set_selection_owner(xcb_connection,
                            selwin,
                            tray_reply->atom,
                            XCB_CURRENT_TIME);


    xcb_get_selection_owner_cookie_t selcookie;
    xcb_get_selection_owner_reply_t *selreply;

    selcookie = xcb_get_selection_owner(xcb_connection, tray_reply->atom);
    if (!(selreply = xcb_get_selection_owner_reply(xcb_connection, selcookie, ((void*)0)))) {
        ELOG("Could not get selection owner for %s\n", atomname);
        exit(EXIT_FAILURE);
    }

    if (selreply->owner != selwin) {
        ELOG("Could not set the %s selection. "
             "Maybe another tray is already running?\n",
             atomname);


        free(selreply);
        return;
    }

    free(selreply);

    send_tray_clientmessage();
}
