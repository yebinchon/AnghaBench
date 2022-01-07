
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int* sbox1 ;
 int* sbox2 ;
 int* sbox3 ;
 int* sbox4 ;

__attribute__((used)) static void tgr192_round(u64 * ra, u64 * rb, u64 * rc, u64 x, int mul)
{
 u64 a = *ra;
 u64 b = *rb;
 u64 c = *rc;

 c ^= x;
 a -= sbox1[c & 0xff] ^ sbox2[(c >> 16) & 0xff]
    ^ sbox3[(c >> 32) & 0xff] ^ sbox4[(c >> 48) & 0xff];
 b += sbox4[(c >> 8) & 0xff] ^ sbox3[(c >> 24) & 0xff]
    ^ sbox2[(c >> 40) & 0xff] ^ sbox1[(c >> 56) & 0xff];
 b *= mul;

 *ra = a;
 *rb = b;
 *rc = c;
}
