
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef char xcb_get_property_reply_t ;
struct TYPE_6__ {int name_x_changed; int * name; int id; scalar_t__ uses_net_wm_name; } ;
typedef TYPE_1__ i3Window ;
typedef int i3String ;
struct TYPE_7__ {int * title_format; } ;
typedef TYPE_2__ Con ;


 int DLOG (char*) ;
 int FREE (char*) ;
 int I3STRING_FREE (int *) ;
 int LOG (char*,...) ;
 TYPE_2__* con_by_window_id (int ) ;
 int * con_parse_title_format (TYPE_2__*) ;
 int ewmh_update_visible_name (int ,int ) ;
 int free (char*) ;
 int i3string_as_utf8 (int *) ;
 int i3string_free (int *) ;
 int * i3string_from_utf8 (char*) ;
 char* sstrndup (int ,int const) ;
 int xcb_get_property_value (char*) ;
 int xcb_get_property_value_length (char*) ;

void window_update_name_legacy(i3Window *win, xcb_get_property_reply_t *prop) {
    if (prop == ((void*)0) || xcb_get_property_value_length(prop) == 0) {
        DLOG("WM_NAME not set (_NET_WM_NAME is what you want anyways).\n");
        FREE(prop);
        return;
    }


    if (win->uses_net_wm_name) {
        free(prop);
        return;
    }

    i3string_free(win->name);
    const int len = xcb_get_property_value_length(prop);
    char *name = sstrndup(xcb_get_property_value(prop), len);
    win->name = i3string_from_utf8(name);
    free(name);

    Con *con = con_by_window_id(win->id);
    if (con != ((void*)0) && con->title_format != ((void*)0)) {
        i3String *name = con_parse_title_format(con);
        ewmh_update_visible_name(win->id, i3string_as_utf8(name));
        I3STRING_FREE(name);
    }

    LOG("WM_NAME changed to \"%s\"\n", i3string_as_utf8(win->name));
    LOG("Using legacy window title. Note that in order to get Unicode window "
        "titles in i3, the application has to set _NET_WM_NAME (UTF-8)\n");

    win->name_x_changed = 1;

    free(prop);
}
