
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int X25519_KEY_SIZE ;
 int cf_curve25519_mul_base (int *,int *) ;
 int ptls_minicrypto_random_bytes (int *,int ) ;

__attribute__((used)) static void x25519_create_keypair(uint8_t *priv, uint8_t *pub)
{
    ptls_minicrypto_random_bytes(priv, X25519_KEY_SIZE);
    cf_curve25519_mul_base(pub, priv);
}
