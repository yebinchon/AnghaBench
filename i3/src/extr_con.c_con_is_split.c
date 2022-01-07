
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int layout; } ;
typedef TYPE_1__ Con ;




 scalar_t__ con_is_leaf (TYPE_1__*) ;

bool con_is_split(Con *con) {
    if (con_is_leaf(con))
        return 0;

    switch (con->layout) {
        case 129:
        case 128:
            return 0;

        default:
            return 1;
    }
}
