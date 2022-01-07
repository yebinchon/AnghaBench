
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * bcops ;
 int indy_sc_enable () ;
 int indy_sc_ops ;
 scalar_t__ indy_sc_probe () ;

void indy_sc_init(void)
{
 if (indy_sc_probe()) {
  indy_sc_enable();
  bcops = &indy_sc_ops;
 }
}
