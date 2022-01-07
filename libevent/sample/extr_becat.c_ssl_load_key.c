
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssl_context {int pkey; } ;
typedef int RSA ;
typedef int BIGNUM ;


 int BN_free (int *) ;
 int * BN_new () ;
 int BN_set_word (int *,int ) ;
 int EVP_PKEY_assign_RSA (int ,int *) ;
 int EVP_PKEY_new () ;
 int RSA_F4 ;
 int RSA_generate_key_ex (int *,int,int *,int *) ;
 int * RSA_new () ;

__attribute__((used)) static int ssl_load_key(struct ssl_context *ssl)
{
 int err = 1;
 BIGNUM *bn;
 RSA *key;

 ssl->pkey = EVP_PKEY_new();

 bn = BN_new();
 if (BN_set_word(bn, RSA_F4) != 1)
  goto err;

 key = RSA_new();
 if (RSA_generate_key_ex(key, 2048, bn, ((void*)0)) != 1)
  goto err;
 if (EVP_PKEY_assign_RSA(ssl->pkey, key) != 1)
  goto err;
 err = 0;
err:
 BN_free(bn);
 return err;
}
