
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int X86_FEATURE_SSSE3 ;
 scalar_t__ boot_cpu_has (int ) ;
 int crypto_register_shashes (int ,int ) ;
 int sha512_ssse3_algs ;

__attribute__((used)) static int register_sha512_ssse3(void)
{
 if (boot_cpu_has(X86_FEATURE_SSSE3))
  return crypto_register_shashes(sha512_ssse3_algs,
   ARRAY_SIZE(sha512_ssse3_algs));
 return 0;
}
