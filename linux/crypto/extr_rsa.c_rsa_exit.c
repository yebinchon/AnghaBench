
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_unregister_akcipher (int *) ;
 int crypto_unregister_template (int *) ;
 int rsa ;
 int rsa_pkcs1pad_tmpl ;

__attribute__((used)) static void rsa_exit(void)
{
 crypto_unregister_template(&rsa_pkcs1pad_tmpl);
 crypto_unregister_akcipher(&rsa);
}
