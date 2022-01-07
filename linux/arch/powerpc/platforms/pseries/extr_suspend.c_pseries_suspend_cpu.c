
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ atomic_read (int *) ;
 int rtas_suspend_cpu (int *) ;
 int suspend_data ;
 int suspending ;

__attribute__((used)) static int pseries_suspend_cpu(void)
{
 if (atomic_read(&suspending))
  return rtas_suspend_cpu(&suspend_data);
 return 0;
}
