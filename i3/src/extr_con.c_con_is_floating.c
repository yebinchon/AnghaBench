
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ floating; } ;
typedef TYPE_1__ Con ;


 scalar_t__ FLOATING_AUTO_ON ;
 int assert (int ) ;

bool con_is_floating(Con *con) {
    assert(con != ((void*)0));
    return (con->floating >= FLOATING_AUTO_ON);
}
