#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  COLUMN ; 
 int /*<<< orphan*/  ROW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 

void FUNC2(const uint8_t key0[16],
                     const uint8_t key1[16],
                     const uint8_t nonce[16],
                     const uint8_t constant[16],
                     uint8_t out[64])
{
  /* unpack sequence is:
   *
   * c0
   * key0
   * c1
   * nonce
   * c2
   * key1
   * c3
   *
   * where c0, c1, c2, c3 = constant
   */
  
  uint32_t z0, z1, z2, z3, z4, z5, z6, z7,
           z8, z9, za, zb, zc, zd, ze, zf;

  uint32_t x0 = z0 = FUNC0(constant + 0),
           x1 = z1 = FUNC0(key0 + 0),
           x2 = z2 = FUNC0(key0 + 4),
           x3 = z3 = FUNC0(key0 + 8),
           x4 = z4 = FUNC0(key0 + 12),
           x5 = z5 = FUNC0(constant + 4),
           x6 = z6 = FUNC0(nonce + 0),
           x7 = z7 = FUNC0(nonce + 4),
           x8 = z8 = FUNC0(nonce + 8),
           x9 = z9 = FUNC0(nonce + 12),
           xa = za = FUNC0(constant + 8),
           xb = zb = FUNC0(key1 + 0),
           xc = zc = FUNC0(key1 + 4),
           xd = zd = FUNC0(key1 + 8),
           xe = ze = FUNC0(key1 + 12),
           xf = zf = FUNC0(constant + 12);

#define QUARTER(v0, v1, v2, v3) \
  v1 ^= rotl32(v0 + v3, 7); \
  v2 ^= rotl32(v1 + v0, 9); \
  v3 ^= rotl32(v2 + v1, 13);\
  v0 ^= rotl32(v3 + v2, 18)

#define ROW \
  QUARTER(z0, z1, z2, z3); \
  QUARTER(z5, z6, z7, z4); \
  QUARTER(za, zb, z8, z9); \
  QUARTER(zf, zc, zd, ze)

#define COLUMN\
  QUARTER(z0, z4, z8, zc); \
  QUARTER(z5, z9, zd, z1); \
  QUARTER(za, ze, z2, z6); \
  QUARTER(zf, z3, z7, zb)

  for (int i = 0; i < 10; i++)
  {
    COLUMN;
    ROW;
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

  FUNC1(x0, out + 0);
  FUNC1(x1, out + 4);
  FUNC1(x2, out + 8);
  FUNC1(x3, out + 12);
  FUNC1(x4, out + 16);
  FUNC1(x5, out + 20);
  FUNC1(x6, out + 24);
  FUNC1(x7, out + 28);
  FUNC1(x8, out + 32);
  FUNC1(x9, out + 36);
  FUNC1(xa, out + 40);
  FUNC1(xb, out + 44);
  FUNC1(xc, out + 48);
  FUNC1(xd, out + 52);
  FUNC1(xe, out + 56);
  FUNC1(xf, out + 60);
}