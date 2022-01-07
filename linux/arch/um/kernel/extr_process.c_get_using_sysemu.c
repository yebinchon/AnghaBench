
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_read (int *) ;
 int using_sysemu ;

int get_using_sysemu(void)
{
 return atomic_read(&using_sysemu);
}
