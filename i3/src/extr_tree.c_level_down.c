
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int focus_head; } ;
struct TYPE_6__ {scalar_t__ type; int focus_head; } ;
typedef TYPE_1__ Con ;


 scalar_t__ CT_FLOATING_CON ;
 int DLOG (char*) ;
 TYPE_1__* TAILQ_END (int *) ;
 TYPE_1__* TAILQ_FIRST (int *) ;
 int con_activate (TYPE_1__*) ;
 TYPE_2__* focused ;

bool level_down(void) {

    Con *next = TAILQ_FIRST(&(focused->focus_head));
    if (next == TAILQ_END(&(focused->focus_head))) {
        DLOG("cannot go down\n");
        return 0;
    } else if (next->type == CT_FLOATING_CON) {


        Con *child = TAILQ_FIRST(&(next->focus_head));
        if (child == TAILQ_END(&(next->focus_head))) {
            DLOG("cannot go down\n");
            return 0;
        } else
            next = TAILQ_FIRST(&(next->focus_head));
    }

    con_activate(next);
    return 1;
}
