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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int*,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int*,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int*,unsigned int*,unsigned int*,unsigned int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int*,unsigned int*,unsigned int*) ; 

__attribute__((used)) static void FUNC6(unsigned int work[64],const unsigned char e[32])
{
  unsigned int xzm1[64];
  unsigned int xzm[64];
  unsigned int xzmb[64];
  unsigned int xzm1b[64];
  unsigned int xznb[64];
  unsigned int xzn1b[64];
  unsigned int a0[64];
  unsigned int a1[64];
  unsigned int b0[64];
  unsigned int b1[64];
  unsigned int c1[64];
  unsigned int r[32];
  unsigned int s[32];
  unsigned int t[32];
  unsigned int u[32];
  unsigned int j;
  unsigned int b;
  int pos;

  for (j = 0;j < 32;++j) xzm1[j] = work[j];
  xzm1[32] = 1;
  for (j = 33;j < 64;++j) xzm1[j] = 0;

  xzm[0] = 1;
  for (j = 1;j < 64;++j) xzm[j] = 0;

  for (pos = 254;pos >= 0;--pos) {
    b = e[pos / 8] >> (pos & 7);
    b &= 1;
    FUNC3(xzmb,xzm1b,xzm,xzm1,b);
    FUNC0(a0,xzmb,xzmb + 32);
    FUNC5(a0 + 32,xzmb,xzmb + 32);
    FUNC0(a1,xzm1b,xzm1b + 32);
    FUNC5(a1 + 32,xzm1b,xzm1b + 32);
    FUNC4(b0,a0);
    FUNC4(b0 + 32,a0 + 32);
    FUNC1(b1,a1,a0 + 32);
    FUNC1(b1 + 32,a1 + 32,a0);
    FUNC0(c1,b1,b1 + 32);
    FUNC5(c1 + 32,b1,b1 + 32);
    FUNC4(r,c1 + 32);
    FUNC5(s,b0,b0 + 32);
    FUNC2(t,s);
    FUNC0(u,t,b0);
    FUNC1(xznb,b0,b0 + 32);
    FUNC1(xznb + 32,s,u);
    FUNC4(xzn1b,c1);
    FUNC1(xzn1b + 32,r,work);
    FUNC3(xzm,xzm1,xznb,xzn1b,b);
  }

  for (j = 0;j < 64;++j) work[j] = xzm[j];
}