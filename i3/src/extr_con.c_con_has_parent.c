
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* parent; } ;
typedef TYPE_1__ Con ;



bool con_has_parent(Con *con, Con *parent) {
    Con *current = con->parent;
    if (current == ((void*)0)) {
        return 0;
    }

    if (current == parent) {
        return 1;
    }

    return con_has_parent(current, parent);
}
