
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int xcb_button_press_event_t ;
typedef int orientation_t ;
typedef scalar_t__ direction_t ;
typedef int border_t ;
struct TYPE_7__ {scalar_t__ parent; } ;
typedef TYPE_1__ Con ;






 int DLOG (char*,...) ;
 scalar_t__ D_DOWN ;
 scalar_t__ D_LEFT ;
 scalar_t__ D_RIGHT ;
 scalar_t__ D_UP ;
 int HORIZ ;
 int LOG (char*) ;
 int VERT ;
 int assert (int) ;
 int resize_find_tiling_participants (TYPE_1__**,TYPE_1__**,scalar_t__,int) ;
 int resize_graphical_handler (TYPE_1__*,TYPE_1__*,int const,int *,int) ;
 int tree_render () ;

__attribute__((used)) static bool tiling_resize_for_border(Con *con, border_t border, xcb_button_press_event_t *event, bool use_threshold) {
    DLOG("border = %d, con = %p\n", border, con);
    Con *second = ((void*)0);
    Con *first = con;
    direction_t search_direction;
    switch (border) {
        case 130:
            search_direction = D_LEFT;
            break;
        case 129:
            search_direction = D_RIGHT;
            break;
        case 128:
            search_direction = D_UP;
            break;
        case 131:
            search_direction = D_DOWN;
            break;
    }

    bool res = resize_find_tiling_participants(&first, &second, search_direction, 0);
    if (!res) {
        LOG("No second container in this direction found.\n");
        return 0;
    }

    assert(first != second);
    assert(first->parent == second->parent);


    if (search_direction == D_UP || search_direction == D_LEFT) {
        Con *tmp = first;
        first = second;
        second = tmp;
    }

    const orientation_t orientation = ((border == 130 || border == 129) ? HORIZ : VERT);

    resize_graphical_handler(first, second, orientation, event, use_threshold);

    DLOG("After resize handler, rendering\n");
    tree_render();
    return 1;
}
