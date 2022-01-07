
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_unregister_shash (int *) ;
 int ifxdeu_md5_alg ;

void ifxdeu_fini_md5 (void)
{
    crypto_unregister_shash(&ifxdeu_md5_alg);

}
