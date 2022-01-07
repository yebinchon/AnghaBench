
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int *) ;
 int WARN_ON (int) ;
 int * default_cipher_testvec_configs ;
 int * default_hash_testvec_configs ;
 int valid_testvec_config (int *) ;

__attribute__((used)) static void alg_check_testvec_configs(void)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(default_cipher_testvec_configs); i++)
  WARN_ON(!valid_testvec_config(
    &default_cipher_testvec_configs[i]));

 for (i = 0; i < ARRAY_SIZE(default_hash_testvec_configs); i++)
  WARN_ON(!valid_testvec_config(
    &default_hash_testvec_configs[i]));
}
