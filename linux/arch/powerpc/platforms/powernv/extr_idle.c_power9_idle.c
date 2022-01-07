
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pnv_default_stop_mask ;
 int pnv_default_stop_val ;
 int power9_idle_type (int ,int ) ;

void power9_idle(void)
{
 power9_idle_type(pnv_default_stop_val, pnv_default_stop_mask);
}
