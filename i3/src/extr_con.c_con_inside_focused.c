
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* parent; } ;
typedef TYPE_1__ Con ;


 TYPE_1__* focused ;

bool con_inside_focused(Con *con) {
    if (con == focused)
        return 1;
    if (!con->parent)
        return 0;
    return con_inside_focused(con->parent);
}
