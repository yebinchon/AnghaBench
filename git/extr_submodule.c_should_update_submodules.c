
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ RECURSE_SUBMODULES_ON ;
 scalar_t__ config_update_recurse_submodules ;

int should_update_submodules(void)
{
 return config_update_recurse_submodules == RECURSE_SUBMODULES_ON;
}
