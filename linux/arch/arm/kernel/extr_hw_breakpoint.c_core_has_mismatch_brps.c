
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ARM_DEBUG_ARCH_V7_ECP14 ;
 scalar_t__ get_debug_arch () ;
 int get_num_brp_resources () ;

__attribute__((used)) static int core_has_mismatch_brps(void)
{
 return (get_debug_arch() >= ARM_DEBUG_ARCH_V7_ECP14 &&
  get_num_brp_resources() > 1);
}
