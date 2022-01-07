
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_notifier_call_chain (int *,int ,int *) ;
 scalar_t__ fips_enabled ;
 int fips_fail_notif_chain ;

void fips_fail_notify(void)
{
 if (fips_enabled)
  atomic_notifier_call_chain(&fips_fail_notif_chain, 0, ((void*)0));
}
