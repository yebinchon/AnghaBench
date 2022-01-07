
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* parent; } ;
typedef TYPE_1__ Con ;


 int assert (int) ;

__attribute__((used)) static Con *lowest_common_ancestor(Con *a, Con *b) {
    Con *parent_a = a;
    while (parent_a) {
        Con *parent_b = b;
        while (parent_b) {
            if (parent_a == parent_b) {
                return parent_a;
            }
            parent_b = parent_b->parent;
        }
        parent_a = parent_a->parent;
    }
    assert(0);
}
