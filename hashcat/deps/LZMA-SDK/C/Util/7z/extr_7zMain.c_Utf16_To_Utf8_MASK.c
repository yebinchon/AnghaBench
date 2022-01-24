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
typedef  int UInt32 ;
typedef  int UInt16 ;
typedef  int /*<<< orphan*/  Byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int FUNC2 (int) ; 

__attribute__((used)) static Byte *FUNC3(Byte *dest, const UInt16 *src, const UInt16 *srcLim)
{
  for (;;)
  {
    UInt32 val;
    if (src == srcLim)
      return dest;
    
    val = *src++;
    
    if (val < 0x80)
    {
      *dest++ = (char)val;
      continue;
    }

    if (val < FUNC2(1))
    {
      dest[0] = FUNC1(1, val);
      dest[1] = FUNC0(0, val);
      dest += 2;
      continue;
    }

    if (val >= 0xD800 && val < 0xDC00 && src != srcLim)
    {
      UInt32 c2 = *src;
      if (c2 >= 0xDC00 && c2 < 0xE000)
      {
        src++;
        val = (((val - 0xD800) << 10) | (c2 - 0xDC00)) + 0x10000;
        dest[0] = FUNC1(3, val);
        dest[1] = FUNC0(2, val);
        dest[2] = FUNC0(1, val);
        dest[3] = FUNC0(0, val);
        dest += 4;
        continue;
      }
    }
    
    dest[0] = FUNC1(2, val);
    dest[1] = FUNC0(1, val);
    dest[2] = FUNC0(0, val);
    dest += 3;
  }
}