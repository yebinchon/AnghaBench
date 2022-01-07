
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;


 int COLUMN ;
 int ROW ;
 scalar_t__ read32_le (int const*) ;
 int write32_le (scalar_t__,int *) ;

void cf_salsa20_core(const uint8_t key0[16],
                     const uint8_t key1[16],
                     const uint8_t nonce[16],
                     const uint8_t constant[16],
                     uint8_t out[64])
{
  uint32_t z0, z1, z2, z3, z4, z5, z6, z7,
           z8, z9, za, zb, zc, zd, ze, zf;

  uint32_t x0 = z0 = read32_le(constant + 0),
           x1 = z1 = read32_le(key0 + 0),
           x2 = z2 = read32_le(key0 + 4),
           x3 = z3 = read32_le(key0 + 8),
           x4 = z4 = read32_le(key0 + 12),
           x5 = z5 = read32_le(constant + 4),
           x6 = z6 = read32_le(nonce + 0),
           x7 = z7 = read32_le(nonce + 4),
           x8 = z8 = read32_le(nonce + 8),
           x9 = z9 = read32_le(nonce + 12),
           xa = za = read32_le(constant + 8),
           xb = zb = read32_le(key1 + 0),
           xc = zc = read32_le(key1 + 4),
           xd = zd = read32_le(key1 + 8),
           xe = ze = read32_le(key1 + 12),
           xf = zf = read32_le(constant + 12);
  for (int i = 0; i < 10; i++)
  {
    z4 ^= rotl32(z0 + zc, 7); z8 ^= rotl32(z4 + z0, 9); zc ^= rotl32(z8 + z4, 13); z0 ^= rotl32(zc + z8, 18); z9 ^= rotl32(z5 + z1, 7); zd ^= rotl32(z9 + z5, 9); z1 ^= rotl32(zd + z9, 13); z5 ^= rotl32(z1 + zd, 18); ze ^= rotl32(za + z6, 7); z2 ^= rotl32(ze + za, 9); z6 ^= rotl32(z2 + ze, 13); za ^= rotl32(z6 + z2, 18); z3 ^= rotl32(zf + zb, 7); z7 ^= rotl32(z3 + zf, 9); zb ^= rotl32(z7 + z3, 13); zf ^= rotl32(zb + z7, 18);
    z1 ^= rotl32(z0 + z3, 7); z2 ^= rotl32(z1 + z0, 9); z3 ^= rotl32(z2 + z1, 13); z0 ^= rotl32(z3 + z2, 18); z6 ^= rotl32(z5 + z4, 7); z7 ^= rotl32(z6 + z5, 9); z4 ^= rotl32(z7 + z6, 13); z5 ^= rotl32(z4 + z7, 18); zb ^= rotl32(za + z9, 7); z8 ^= rotl32(zb + za, 9); z9 ^= rotl32(z8 + zb, 13); za ^= rotl32(z9 + z8, 18); zc ^= rotl32(zf + ze, 7); zd ^= rotl32(zc + zf, 9); ze ^= rotl32(zd + zc, 13); zf ^= rotl32(ze + zd, 18);
  }

  x0 += z0;
  x1 += z1;
  x2 += z2;
  x3 += z3;
  x4 += z4;
  x5 += z5;
  x6 += z6;
  x7 += z7;
  x8 += z8;
  x9 += z9;
  xa += za;
  xb += zb;
  xc += zc;
  xd += zd;
  xe += ze;
  xf += zf;

  write32_le(x0, out + 0);
  write32_le(x1, out + 4);
  write32_le(x2, out + 8);
  write32_le(x3, out + 12);
  write32_le(x4, out + 16);
  write32_le(x5, out + 20);
  write32_le(x6, out + 24);
  write32_le(x7, out + 28);
  write32_le(x8, out + 32);
  write32_le(x9, out + 36);
  write32_le(xa, out + 40);
  write32_le(xb, out + 44);
  write32_le(xc, out + 48);
  write32_le(xd, out + 52);
  write32_le(xe, out + 56);
  write32_le(xf, out + 60);
}
