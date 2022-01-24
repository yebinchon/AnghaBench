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
typedef  int uint8_t ;
typedef  int int64_t ;
typedef  int* gf ;

/* Variables and functions */
 int* _121665 ; 
 int /*<<< orphan*/  FUNC0 (int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC7 (int*,int const*) ; 

void FUNC8(uint8_t *q, const uint8_t *n, const uint8_t *p)
{
  uint8_t z[32];
  gf x;
  gf a, b, c, d, e, f;

  {
  size_t i;
  for (i = 0; i < 31; i++)
    z[i] = n[i];
  z[31] = (n[31] & 127) | 64;
  z[0] &= 248;
  
  FUNC7(x, p);

  for(i = 0; i < 16; i++)
  {
    b[i] = x[i];
    d[i] = a[i] = c[i] = 0;
  }
  }

  a[0] = d[0] = 1;

  {int i;
  for (i = 254; i >= 0; i--)
  {
    int64_t r = (z[i >> 3] >> (i & 7)) & 1;
    FUNC4(a, b, r);
    FUNC4(c, d, r);
    FUNC0(e, a, c);
    FUNC6(a, a, c);
    FUNC0(c, b, d);
    FUNC6(b, b, d);
    FUNC5(d, e);
    FUNC5(f, a);
    FUNC2(a, c, a);
    FUNC2(c, b, e);
    FUNC0(e, a, c);
    FUNC6(a, a, c);
    FUNC5(b, a);
    FUNC6(c, d, f);
    FUNC2(a, c, _121665);
    FUNC0(a, a, d);
    FUNC2(c, c, a);
    FUNC2(a, d, f);
    FUNC2(d, b, x);
    FUNC5(b, e);
    FUNC4(a, b, r);
    FUNC4(c, d, r);
  }
  }

  FUNC1(c, c);
  FUNC2(a, a, c);
  FUNC3(q, a);
}