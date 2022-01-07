
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_pk_context ;


 int MBEDTLS_PK_RSA ;
 int _urandom ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int mbedtls_pk_info_from_type (int ) ;
 int mbedtls_pk_init (int *) ;
 int mbedtls_pk_rsa (int ) ;
 int mbedtls_pk_setup (int *,int ) ;
 scalar_t__ mbedtls_rsa_gen_key (int ,int ,int *,int,int) ;
 int stderr ;

__attribute__((used)) static void gen_key(mbedtls_pk_context *key, int ksize, int exp, bool pem)
{
 mbedtls_pk_init(key);
 fprintf(stderr, "Generating RSA private key, %i bit long modulus\n", ksize);
 mbedtls_pk_setup(key, mbedtls_pk_info_from_type(MBEDTLS_PK_RSA));
 if (mbedtls_rsa_gen_key(mbedtls_pk_rsa(*key), _urandom, ((void*)0), ksize, exp)) {
  fprintf(stderr, "error: key generation failed\n");
  exit(1);
 }
}
