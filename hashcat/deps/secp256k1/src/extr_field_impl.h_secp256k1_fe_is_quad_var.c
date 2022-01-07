
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int secp256k1_num ;
typedef int secp256k1_fe ;


 int secp256k1_fe_get_b32 (unsigned char*,int *) ;
 int secp256k1_fe_normalize_var (int *) ;
 int secp256k1_fe_sqrt (int *,int const*) ;
 scalar_t__ secp256k1_num_jacobi (int *,int *) ;
 int secp256k1_num_set_bin (int *,unsigned char const*,int) ;

__attribute__((used)) static int secp256k1_fe_is_quad_var(const secp256k1_fe *a) {

    unsigned char b[32];
    secp256k1_num n;
    secp256k1_num m;

    static const unsigned char prime[32] = {
        0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,
        0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,
        0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,
        0xFF,0xFF,0xFF,0xFE,0xFF,0xFF,0xFC,0x2F
    };

    secp256k1_fe c = *a;
    secp256k1_fe_normalize_var(&c);
    secp256k1_fe_get_b32(b, &c);
    secp256k1_num_set_bin(&n, b, 32);
    secp256k1_num_set_bin(&m, prime, 32);
    return secp256k1_num_jacobi(&n, &m) >= 0;




}
