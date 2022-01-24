#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  mfpr_off; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MFP_PIN_MAX ; 
 int /*<<< orphan*/  mfp_spin_lock ; 
 TYPE_1__* mfp_table ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

unsigned long FUNC4(int mfp)
{
	unsigned long val, flags;

	FUNC0(mfp < 0 || mfp >= MFP_PIN_MAX);

	FUNC2(&mfp_spin_lock, flags);
	val = FUNC1(mfp_table[mfp].mfpr_off);
	FUNC3(&mfp_spin_lock, flags);

	return val;
}