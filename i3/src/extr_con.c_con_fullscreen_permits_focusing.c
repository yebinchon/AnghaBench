
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ fullscreen_mode; scalar_t__ type; struct TYPE_7__* parent; } ;
typedef TYPE_1__ Con ;


 scalar_t__ CF_NONE ;
 scalar_t__ CF_OUTPUT ;
 scalar_t__ CT_WORKSPACE ;
 int assert (int) ;
 scalar_t__ con_get_workspace (TYPE_1__*) ;
 int con_has_parent (TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* focused ;

bool con_fullscreen_permits_focusing(Con *con) {

    if (!focused)
        return 1;


    Con *fs = focused;
    while (fs && fs->fullscreen_mode == CF_NONE)
        fs = fs->parent;



    assert(fs != ((void*)0));


    assert(fs->fullscreen_mode != CF_NONE);
    if (fs->type == CT_WORKSPACE)
        return 1;


    if (con == fs)
        return 1;



    if (fs->fullscreen_mode == CF_OUTPUT &&
        con_get_workspace(con) != con_get_workspace(fs)) {
        return 1;
    }



    return con_has_parent(con, fs);
}
