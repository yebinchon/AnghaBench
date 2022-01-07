
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int mapped; } ;


 int DLOG (char*) ;
 TYPE_1__* croot ;
 int mark_unmapped (TYPE_1__*) ;
 int render_con (TYPE_1__*,int) ;
 int x_push_changes (TYPE_1__*) ;

void tree_render(void) {
    if (croot == ((void*)0))
        return;

    DLOG("-- BEGIN RENDERING --\n");


    mark_unmapped(croot);
    croot->mapped = 1;

    render_con(croot, 0);

    x_push_changes(croot);
    DLOG("-- END RENDERING --\n");
}
