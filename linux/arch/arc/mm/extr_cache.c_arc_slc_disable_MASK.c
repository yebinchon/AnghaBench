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
 int ARC_REG_SLC_CTRL ; 
 int /*<<< orphan*/  OP_FLUSH_N_INV ; 
 int SLC_CTRL_DIS ; 
 int FUNC0 (int const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int const,int) ; 

__attribute__((used)) static inline void FUNC3(void)
{
	const int r = ARC_REG_SLC_CTRL;

	FUNC1(OP_FLUSH_N_INV);
	FUNC2(r, FUNC0(r) | SLC_CTRL_DIS);
}