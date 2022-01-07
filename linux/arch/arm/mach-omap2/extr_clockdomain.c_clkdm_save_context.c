
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _clkdm_save_context ;
 int clkdm_for_each (int ,int *) ;

void clkdm_save_context(void)
{
 clkdm_for_each(_clkdm_save_context, ((void*)0));
}
