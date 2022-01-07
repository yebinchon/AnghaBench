
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int i3Window ;
typedef int Con ;


 int * con_new_skeleton (int *,int *) ;
 int x_con_init (int *) ;

Con *con_new(Con *parent, i3Window *window) {
    Con *new = con_new_skeleton(parent, window);
    x_con_init(new);
    return new;
}
