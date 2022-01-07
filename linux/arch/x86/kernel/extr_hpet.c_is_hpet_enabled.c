
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ hpet_legacy_int_enabled ;
 scalar_t__ is_hpet_capable () ;

int is_hpet_enabled(void)
{
 return is_hpet_capable() && hpet_legacy_int_enabled;
}
