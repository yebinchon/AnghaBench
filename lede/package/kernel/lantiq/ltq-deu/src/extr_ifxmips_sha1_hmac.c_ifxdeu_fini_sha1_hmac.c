
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_unregister_shash (int *) ;
 int ifxdeu_sha1_hmac_alg ;

void ifxdeu_fini_sha1_hmac (void)
{

    crypto_unregister_shash(&ifxdeu_sha1_hmac_alg);


}
