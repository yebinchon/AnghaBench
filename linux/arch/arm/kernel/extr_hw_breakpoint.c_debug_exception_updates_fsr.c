
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ARM_DEBUG_ARCH_V8 ;
 scalar_t__ get_debug_arch () ;

__attribute__((used)) static int debug_exception_updates_fsr(void)
{
 return get_debug_arch() >= ARM_DEBUG_ARCH_V8;
}
