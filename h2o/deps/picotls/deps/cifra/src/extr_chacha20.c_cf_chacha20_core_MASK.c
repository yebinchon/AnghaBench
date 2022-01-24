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
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 

void FUNC3(const uint8_t key0[16],
                      const uint8_t key1[16],
                      const uint8_t nonce[16],
                      const uint8_t constant[16],
                      uint8_t out[64])
{
  uint32_t z0, z1, z2, z3, z4, z5, z6, z7,
           z8, z9, za, zb, zc, zd, ze, zf;

  uint32_t x0 = z0 = FUNC1(constant + 0),
           x1 = z1 = FUNC1(constant + 4),
           x2 = z2 = FUNC1(constant + 8),
           x3 = z3 = FUNC1(constant + 12),
           x4 = z4 = FUNC1(key0 + 0),
           x5 = z5 = FUNC1(key0 + 4),
           x6 = z6 = FUNC1(key0 + 8),
           x7 = z7 = FUNC1(key0 + 12),
           x8 = z8 = FUNC1(key1 + 0),
           x9 = z9 = FUNC1(key1 + 4),
           xa = za = FUNC1(key1 + 8),
           xb = zb = FUNC1(key1 + 12),
           xc = zc = FUNC1(nonce + 0),
           xd = zd = FUNC1(nonce + 4),
           xe = ze = FUNC1(nonce + 8),
           xf = zf = FUNC1(nonce + 12);

#define QUARTER(a, b, c, d) \
  a += b; d = rotl32(d ^ a, 16); \
  c += d; b = rotl32(b ^ c, 12); \
  a += b; d = rotl32(d ^ a, 8);  \
  c += d; b = rotl32(b ^ c, 7);

  int i;
  for (i = 0; i < 10; i++)
  {
    QUARTER(z0, z4, z8, zc);
    QUARTER(z1, z5, z9, zd);
    QUARTER(z2, z6, za, ze);
    QUARTER(z3, z7, zb, zf);
    QUARTER(z0, z5, za, zf);
    QUARTER(z1, z6, zb, zc);
    QUARTER(z2, z7, z8, zd);
    QUARTER(z3, z4, z9, ze);
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

  FUNC2(x0, out + 0);
  FUNC2(x1, out + 4);
  FUNC2(x2, out + 8);
  FUNC2(x3, out + 12);
  FUNC2(x4, out + 16);
  FUNC2(x5, out + 20);
  FUNC2(x6, out + 24);
  FUNC2(x7, out + 28);
  FUNC2(x8, out + 32);
  FUNC2(x9, out + 36);
  FUNC2(xa, out + 40);
  FUNC2(xb, out + 44);
  FUNC2(xc, out + 48);
  FUNC2(xd, out + 52);
  FUNC2(xe, out + 56);
  FUNC2(xf, out + 60);
}