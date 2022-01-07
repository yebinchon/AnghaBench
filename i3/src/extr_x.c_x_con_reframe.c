
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Con ;


 int _x_con_kill (int *) ;
 int x_con_init (int *) ;

void x_con_reframe(Con *con) {
    _x_con_kill(con);
    x_con_init(con);
}
