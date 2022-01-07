
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int X86_FEATURE_SSSE3 ;
 scalar_t__ boot_cpu_has (int ) ;
 int crypto_register_shash (int *) ;
 int sha1_ssse3_alg ;

__attribute__((used)) static int register_sha1_ssse3(void)
{
 if (boot_cpu_has(X86_FEATURE_SSSE3))
  return crypto_register_shash(&sha1_ssse3_alg);
 return 0;
}
