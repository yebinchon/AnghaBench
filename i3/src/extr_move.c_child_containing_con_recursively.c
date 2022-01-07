
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* parent; } ;
typedef TYPE_1__ Con ;


 int assert (TYPE_1__*) ;

__attribute__((used)) static Con *child_containing_con_recursively(Con *ancestor, Con *con) {
    Con *child = con;
    while (child && child->parent != ancestor) {
        child = child->parent;
        assert(child->parent);
    }
    return child;
}
