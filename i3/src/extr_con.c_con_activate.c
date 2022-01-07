
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Con ;


 int con_focus (int *) ;
 int con_raise (int *) ;

void con_activate(Con *con) {
    con_focus(con);
    con_raise(con);
}
