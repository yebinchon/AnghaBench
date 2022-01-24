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
typedef  int /*<<< orphan*/  Cx86cpuid ;
typedef  int BoolInt ;

/* Variables and functions */
 int False ; 
 int /*<<< orphan*/  FUNC0 (int,int*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

BoolInt FUNC2()
{
  Cx86cpuid cpuid;
  if (!FUNC1(&cpuid))
    return False;
  {
    UInt32 d[4] = { 0 };
    FUNC0(0x80000000, &d[0], &d[1], &d[2], &d[3]);
    if (d[0] < 0x80000001)
      return False;
  }
  {
    UInt32 d[4] = { 0 };
    FUNC0(0x80000001, &d[0], &d[1], &d[2], &d[3]);
    return (d[3] >> 26) & 1;
  }
}