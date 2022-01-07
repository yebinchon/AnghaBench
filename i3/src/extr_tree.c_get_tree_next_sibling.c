
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ position_t ;
typedef int Con ;


 scalar_t__ BEFORE ;
 int * TAILQ_NEXT (int *,int ) ;
 int * TAILQ_PREV (int *,int ,int ) ;
 scalar_t__ con_fullscreen_permits_focusing (int *) ;
 int nodes ;
 int nodes_head ;

Con *get_tree_next_sibling(Con *con, position_t direction) {
    Con *to_focus = (direction == BEFORE ? TAILQ_PREV(con, nodes_head, nodes)
                                         : TAILQ_NEXT(con, nodes));
    if (to_focus && con_fullscreen_permits_focusing(to_focus)) {
        return to_focus;
    }
    return ((void*)0);
}
