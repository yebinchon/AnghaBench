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
typedef  int* gf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int* const) ; 

__attribute__((used)) static void FUNC3(uint8_t out[32], const gf n)
{
  size_t i, j;
  int b;
  gf m, t;
  FUNC2(t, n);
  FUNC0(t);
  FUNC0(t);
  FUNC0(t);
  
  for(j = 0; j < 2; j++)
  {
    m[0] = t[0] - 0xffed;
    for (i = 1; i < 15; i++)
    {
      m[i] = t[i] - 0xffff - ((m[i - 1] >> 16) & 1);
      m[i - 1] &= 0xffff;
    }
    m[15] = t[15] - 0x7fff - ((m[14] >> 16) & 1);
    b = (m[15] >> 16) & 1;
    m[14] &= 0xffff;
    FUNC1(t, m, 1 - b);
  }

  for (i = 0; i < 16; i++)
  {
    out[2 * i] = t[i] & 0xff;
    out[2 * i + 1] = (uint8_t) (t[i] >> 8);
  }
}