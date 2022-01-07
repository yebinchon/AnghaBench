
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Con ;


 int * con_inside_floating (int *) ;
 int floating_raise_con (int *) ;

__attribute__((used)) static void con_raise(Con *con) {
    Con *floating = con_inside_floating(con);
    if (floating) {
        floating_raise_con(floating);
    }
}
