
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * bcops ;
 int r5k_sc_enable () ;
 int r5k_sc_ops ;
 scalar_t__ r5k_sc_probe () ;

void r5k_sc_init(void)
{
 if (r5k_sc_probe()) {
  r5k_sc_enable();
  bcops = &r5k_sc_ops;
 }
}
