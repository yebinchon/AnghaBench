
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef int i3Window ;
struct TYPE_11__ {scalar_t__ type; int layout; struct TYPE_11__* parent; } ;
typedef TYPE_1__ Con ;


 scalar_t__ CT_DOCKAREA ;
 scalar_t__ CT_FLOATING_CON ;
 scalar_t__ CT_OUTPUT ;
 scalar_t__ CT_WORKSPACE ;
 int DLOG (char*,TYPE_1__*) ;
 int L_SPLITH ;
 int assert (int ) ;
 TYPE_1__* con_descend_tiling_focused (TYPE_1__*) ;
 int con_fix_percent (TYPE_1__*) ;
 TYPE_1__* con_new (TYPE_1__*,int *) ;
 TYPE_1__* focused ;

Con *tree_open_con(Con *con, i3Window *window) {
    if (con == ((void*)0)) {

        con = focused->parent;


        if (con->parent->type == CT_OUTPUT && con->type != CT_DOCKAREA) {
            con = focused;
        }




        if (con->type == CT_FLOATING_CON) {
            con = con_descend_tiling_focused(con->parent);
            if (con->type != CT_WORKSPACE)
                con = con->parent;
        }
        DLOG("con = %p\n", con);
    }

    assert(con != ((void*)0));


    Con *new = con_new(con, window);
    new->layout = L_SPLITH;


    con_fix_percent(con);

    return new;
}
