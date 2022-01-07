
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memmove (unsigned char*,unsigned char*,size_t) ;
 int secp256k1_rand_bits (int) ;
 size_t secp256k1_rand_int (size_t) ;

__attribute__((used)) static void damage_array(unsigned char *sig, size_t *len) {
    int pos;
    int action = secp256k1_rand_bits(3);
    if (action < 1 && *len > 3) {

        pos = secp256k1_rand_int(*len);
        memmove(sig + pos, sig + pos + 1, *len - pos - 1);
        (*len)--;
        return;
    } else if (action < 2 && *len < 2048) {

        pos = secp256k1_rand_int(1 + *len);
        memmove(sig + pos + 1, sig + pos, *len - pos);
        sig[pos] = secp256k1_rand_bits(8);
        (*len)++;
        return;
    } else if (action < 4) {

        sig[secp256k1_rand_int(*len)] += 1 + secp256k1_rand_int(255);
        return;
    } else {

        sig[secp256k1_rand_int(*len)] ^= 1 << secp256k1_rand_bits(3);
        return;
    }
}
