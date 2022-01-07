
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int xcb_window_t ;
typedef int xcb_visualid_t ;
typedef void* xcb_colormap_t ;
typedef int uint32_t ;
struct con_state {int mapped; int initial; int id; } ;
struct TYPE_10__ {int id; } ;
struct TYPE_9__ {int black_pixel; } ;
struct TYPE_8__ {TYPE_5__ frame; int depth; void* colormap; } ;
struct TYPE_7__ {int member_0; int member_1; int member_2; int member_3; int height; int width; } ;
typedef TYPE_1__ Rect ;
typedef TYPE_2__ Con ;


 int CIRCLEQ_INSERT_HEAD (int *,struct con_state*,struct con_state*) ;
 int DLOG (char*,int ) ;
 int FRAME_EVENT_MASK ;
 int TAILQ_INSERT_TAIL (int *,struct con_state*,int ) ;
 int XCB_ATOM_STRING ;
 int XCB_ATOM_WM_CLASS ;
 int XCB_COLORMAP_ALLOC_NONE ;
 int XCB_CW_BACK_PIXEL ;
 int XCB_CW_BORDER_PIXEL ;
 int XCB_CW_COLORMAP ;
 int XCB_CW_EVENT_MASK ;
 int XCB_CW_OVERRIDE_REDIRECT ;
 int XCB_EVENT_MASK_ENTER_WINDOW ;
 void* XCB_NONE ;
 int XCB_PROP_MODE_REPLACE ;
 int XCB_WINDOW_CLASS_INPUT_OUTPUT ;
 int XCURSOR_CURSOR_POINTER ;
 void* colormap ;
 int conn ;
 int create_window (int ,TYPE_1__,int ,int ,int ,int ,int,int,int*) ;
 int draw_util_surface_init (int ,TYPE_5__*,int ,int ,int ,int ) ;
 int get_visualid_by_depth (int ) ;
 int get_visualtype_by_id (int ) ;
 int initial_mapping_head ;
 int initial_mapping_order ;
 struct con_state* old_state ;
 int old_state_head ;
 int root ;
 int root_depth ;
 TYPE_4__* root_screen ;
 struct con_state* scalloc (int,int) ;
 int state_head ;
 int strlen (char*) ;
 int xcb_change_property (int ,int ,int ,int ,int ,int,int,char*) ;
 int xcb_create_colormap (int ,int ,void*,int ,int ) ;
 void* xcb_generate_id (int ) ;

void x_con_init(Con *con) {



    uint32_t mask = 0;
    uint32_t values[5];

    xcb_visualid_t visual = get_visualid_by_depth(con->depth);
    xcb_colormap_t win_colormap;
    if (con->depth != root_depth) {

        win_colormap = xcb_generate_id(conn);
        xcb_create_colormap(conn, XCB_COLORMAP_ALLOC_NONE, win_colormap, root, visual);
        con->colormap = win_colormap;
    } else {

        win_colormap = colormap;
        con->colormap = XCB_NONE;
    }





    mask |= XCB_CW_BACK_PIXEL;
    values[0] = root_screen->black_pixel;

    mask |= XCB_CW_BORDER_PIXEL;
    values[1] = root_screen->black_pixel;


    mask |= XCB_CW_OVERRIDE_REDIRECT;
    values[2] = 1;


    mask |= XCB_CW_EVENT_MASK;
    values[3] = FRAME_EVENT_MASK & ~XCB_EVENT_MASK_ENTER_WINDOW;

    mask |= XCB_CW_COLORMAP;
    values[4] = win_colormap;

    Rect dims = {-15, -15, 10, 10};
    xcb_window_t frame_id = create_window(conn, dims, con->depth, visual, XCB_WINDOW_CLASS_INPUT_OUTPUT, XCURSOR_CURSOR_POINTER, 0, mask, values);
    draw_util_surface_init(conn, &(con->frame), frame_id, get_visualtype_by_id(visual), dims.width, dims.height);
    xcb_change_property(conn,
                        XCB_PROP_MODE_REPLACE,
                        con->frame.id,
                        XCB_ATOM_WM_CLASS,
                        XCB_ATOM_STRING,
                        8,
                        (strlen("i3-frame") + 1) * 2,
                        "i3-frame\0i3-frame\0");

    struct con_state *state = scalloc(1, sizeof(struct con_state));
    state->id = con->frame.id;
    state->mapped = 0;
    state->initial = 1;
    DLOG("Adding window 0x%08x to lists\n", state->id);
    CIRCLEQ_INSERT_HEAD(&state_head, state, state);
    CIRCLEQ_INSERT_HEAD(&old_state_head, state, old_state);
    TAILQ_INSERT_TAIL(&initial_mapping_head, state, initial_mapping_order);
    DLOG("adding new state for window id 0x%08x\n", state->id);
}
