
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int secp256k1_sha256 ;
typedef int secp256k1_scalar ;
typedef int c ;


 int CHECK (int) ;
 int secp256k1_scalar_set_b32 (int *,unsigned char*,int*) ;
 int secp256k1_sha256_finalize (int *,unsigned char*) ;
 int secp256k1_sha256_initialize (int *) ;
 int secp256k1_sha256_write (int *,unsigned char*,int) ;

__attribute__((used)) static void generate_scalar(uint32_t num, secp256k1_scalar* scalar) {
    secp256k1_sha256 sha256;
    unsigned char c[11] = {'e', 'c', 'm', 'u', 'l', 't', 0, 0, 0, 0};
    unsigned char buf[32];
    int overflow = 0;
    c[6] = num;
    c[7] = num >> 8;
    c[8] = num >> 16;
    c[9] = num >> 24;
    secp256k1_sha256_initialize(&sha256);
    secp256k1_sha256_write(&sha256, c, sizeof(c));
    secp256k1_sha256_finalize(&sha256, buf);
    secp256k1_scalar_set_b32(scalar, buf, &overflow);
    CHECK(!overflow);
}
