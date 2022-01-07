
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int is_pae40_enabled () ;
 scalar_t__ pae_exists ;

int pae40_exist_but_not_enab(void)
{
 return pae_exists && !is_pae40_enabled();
}
