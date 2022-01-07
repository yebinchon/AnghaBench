
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_register_akcipher (int *) ;
 int crypto_register_template (int *) ;
 int crypto_unregister_akcipher (int *) ;
 int rsa ;
 int rsa_pkcs1pad_tmpl ;

__attribute__((used)) static int rsa_init(void)
{
 int err;

 err = crypto_register_akcipher(&rsa);
 if (err)
  return err;

 err = crypto_register_template(&rsa_pkcs1pad_tmpl);
 if (err) {
  crypto_unregister_akcipher(&rsa);
  return err;
 }

 return 0;
}
