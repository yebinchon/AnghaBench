
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; struct TYPE_4__* parent; } ;
typedef TYPE_1__ Con ;


 scalar_t__ CT_WORKSPACE ;

Con *con_get_workspace(Con *con) {
    Con *result = con;
    while (result != ((void*)0) && result->type != CT_WORKSPACE)
        result = result->parent;
    return result;
}
