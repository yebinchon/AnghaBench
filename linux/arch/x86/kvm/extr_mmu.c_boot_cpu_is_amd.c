
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WARN_ON_ONCE (int) ;
 scalar_t__ shadow_x_mask ;
 int tdp_enabled ;

__attribute__((used)) static inline bool boot_cpu_is_amd(void)
{
 WARN_ON_ONCE(!tdp_enabled);
 return shadow_x_mask == 0;
}
