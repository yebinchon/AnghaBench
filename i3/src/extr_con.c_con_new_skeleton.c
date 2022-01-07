
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int depth; } ;
typedef TYPE_1__ i3Window ;
struct TYPE_13__ {int default_border; } ;
struct TYPE_12__ {int current_border_width; int marks_head; int swallow_head; int focus_head; int nodes_head; int floating_head; int depth; int border_style; TYPE_1__* window; int type; int on_remove_child; } ;
typedef TYPE_2__ Con ;


 int CT_CON ;
 int DLOG (char*) ;
 int TAILQ_INIT (int *) ;
 int TAILQ_INSERT_TAIL (int *,TYPE_2__*,int ) ;
 int all_cons ;
 int con_attach (TYPE_2__*,TYPE_2__*,int) ;
 int con_on_remove_child ;
 TYPE_4__ config ;
 int root_depth ;
 TYPE_2__* scalloc (int,int) ;

Con *con_new_skeleton(Con *parent, i3Window *window) {
    Con *new = scalloc(1, sizeof(Con));
    new->on_remove_child = con_on_remove_child;
    TAILQ_INSERT_TAIL(&all_cons, new, all_cons);
    new->type = CT_CON;
    new->window = window;
    new->border_style = config.default_border;
    new->current_border_width = -1;
    if (window) {
        new->depth = window->depth;
    } else {
        new->depth = root_depth;
    }
    DLOG("opening window\n");

    TAILQ_INIT(&(new->floating_head));
    TAILQ_INIT(&(new->nodes_head));
    TAILQ_INIT(&(new->focus_head));
    TAILQ_INIT(&(new->swallow_head));
    TAILQ_INIT(&(new->marks_head));

    if (parent != ((void*)0))
        con_attach(new, parent, 0);

    return new;
}
