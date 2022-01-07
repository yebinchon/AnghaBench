
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AES ;
 int CONFIG_ARM64 ;
 int IS_ENABLED (int ) ;
 int aegis128_have_aes_insn ;
 int cpu_feature (int ) ;
 scalar_t__ cpu_have_feature (int ) ;

bool crypto_aegis128_have_simd(void)
{
 if (cpu_have_feature(cpu_feature(AES))) {
  aegis128_have_aes_insn = 1;
  return 1;
 }
 return IS_ENABLED(CONFIG_ARM64);
}
