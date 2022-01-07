
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int slb_setup_new_exec () ;
 int slice_setup_new_exec () ;

void hash__setup_new_exec(void)
{
 slice_setup_new_exec();

 slb_setup_new_exec();
}
