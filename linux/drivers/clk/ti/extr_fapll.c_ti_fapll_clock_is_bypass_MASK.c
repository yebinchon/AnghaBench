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
struct fapll_data {scalar_t__ bypass_bit_inverted; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int FAPLL_MAIN_BP ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC1(struct fapll_data *fd)
{
	u32 v = FUNC0(fd->base);

	if (fd->bypass_bit_inverted)
		return !(v & FAPLL_MAIN_BP);
	else
		return !!(v & FAPLL_MAIN_BP);
}