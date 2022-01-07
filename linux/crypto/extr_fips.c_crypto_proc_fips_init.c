
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_dir_table ;
 int crypto_sysctls ;
 int register_sysctl_table (int ) ;

__attribute__((used)) static void crypto_proc_fips_init(void)
{
 crypto_sysctls = register_sysctl_table(crypto_dir_table);
}
