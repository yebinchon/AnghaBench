
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __pciwb_mio () ;
 int have_mio ;
 scalar_t__ static_branch_likely (int *) ;

void zpci_barrier(void)
{
 if (static_branch_likely(&have_mio))
  __pciwb_mio();
}
