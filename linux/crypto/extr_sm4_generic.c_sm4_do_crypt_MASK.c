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

/* Variables and functions */
 int FUNC0 (int const*) ; 
 int /*<<< orphan*/  FUNC1 (int,int*) ; 
 int FUNC2 (int*,int const) ; 

__attribute__((used)) static void FUNC3(const u32 *rk, u32 *out, const u32 *in)
{
	u32 x[4], i, t;

	for (i = 0; i < 4; ++i)
		x[i] = FUNC0(&in[i]);

	for (i = 0; i < 32; ++i) {
		t = FUNC2(x, rk[i]);
		x[0] = x[1];
		x[1] = x[2];
		x[2] = x[3];
		x[3] = t;
	}

	for (i = 0; i < 4; ++i)
		FUNC1(x[3 - i], &out[i]);
}