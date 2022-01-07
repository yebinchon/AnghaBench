
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* parent; int focus_head; } ;
typedef TYPE_1__ Con ;


 TYPE_1__* TAILQ_FIRST (int *) ;
 int assert (TYPE_1__*) ;

__attribute__((used)) static bool is_focused_descendant(Con *con, Con *ancestor) {
    Con *current = con;
    while (current != ancestor) {
        if (TAILQ_FIRST(&(current->parent->focus_head)) != current) {
            return 0;
        }
        current = current->parent;
        assert(current->parent);
    }
    return 1;
}
