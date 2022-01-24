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
typedef  int u32 ;
struct vfp_double {int sign; int exponent; int significand; } ;

/* Variables and functions */
 int FUNC0 (int,struct vfp_double*,int,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static u32 FUNC2(int dd, int unused, int dm, u32 fpscr)
{
	struct vfp_double vdm;
	u32 m = FUNC1(dm);

	vdm.sign = (m & 0x80000000) >> 16;
	vdm.exponent = 1023 + 63 - 1;
	vdm.significand = vdm.sign ? -m : m;

	return FUNC0(dd, &vdm, fpscr, 0, "fsito");
}