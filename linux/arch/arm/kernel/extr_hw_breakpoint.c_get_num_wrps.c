
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ARM_DEBUG_ARCH_V7_1 ;
 scalar_t__ get_debug_arch () ;
 int get_num_wrp_resources () ;

__attribute__((used)) static int get_num_wrps(void)
{
 if (get_debug_arch() < ARM_DEBUG_ARCH_V7_1)
  return 1;

 return get_num_wrp_resources();
}
