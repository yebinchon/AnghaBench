
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ARRAY_SIZE (int ) ;
 int BUG (char*) ;
 scalar_t__ TR2_SYSENV_MUST_BE_LAST ;
 int read_very_early_config (int ,int *) ;
 int tr2_sysenv_cb ;
 int tr2_sysenv_settings ;

void tr2_sysenv_load(void)
{
 if (ARRAY_SIZE(tr2_sysenv_settings) != TR2_SYSENV_MUST_BE_LAST)
  BUG("tr2_sysenv_settings size is wrong");

 read_very_early_config(tr2_sysenv_cb, ((void*)0));
}
