
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ ARM_DEBUG_ARCH_V6 ;
 scalar_t__ ARM_DEBUG_ARCH_V7_1 ;
 scalar_t__ ARM_DEBUG_ARCH_V7_ECP14 ;
 scalar_t__ get_debug_arch () ;

__attribute__((used)) static int debug_arch_supported(void)
{
 u8 arch = get_debug_arch();


 return (arch >= ARM_DEBUG_ARCH_V6 && arch <= ARM_DEBUG_ARCH_V7_ECP14) ||
  arch >= ARM_DEBUG_ARCH_V7_1;
}
