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
typedef  int const u32 ;

/* Variables and functions */
 int const FUNC0 (int const) ; 

__attribute__((used)) static u32 FUNC1(const u32 *x, const u32 rk)
{
	return x[0] ^ FUNC0(x[1] ^ x[2] ^ x[3] ^ rk);
}