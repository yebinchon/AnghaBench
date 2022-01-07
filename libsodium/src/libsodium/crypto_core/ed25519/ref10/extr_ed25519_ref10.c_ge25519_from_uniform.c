
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fe25519 ;


 int fe25519_frombytes (int ,unsigned char*) ;
 int ge25519_elligator2 (unsigned char*,int ,unsigned char) ;
 int memcpy (unsigned char*,unsigned char const*,int) ;

void
ge25519_from_uniform(unsigned char s[32], const unsigned char r[32])
{
    fe25519 r_fe;
    unsigned char x_sign;

    memcpy(s, r, 32);
    x_sign = s[31] & 0x80;
    s[31] &= 0x7f;
    fe25519_frombytes(r_fe, s);
    ge25519_elligator2(s, r_fe, x_sign);
}
