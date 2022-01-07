
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ecx; int edx; } ;
typedef TYPE_1__ vk_cpuid_t ;


 TYPE_1__* vk_cpuid () ;

__attribute__((used)) static int aesni256_is_supported (void) {
  vk_cpuid_t *p = vk_cpuid ();
  return (p->ecx & (1 << 25)) && ((p->edx & 0x06000000) == 0x06000000);
}
