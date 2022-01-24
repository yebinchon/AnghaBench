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
struct rt305x_esw {int /*<<< orphan*/  reg_rw_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rt305x_esw*,unsigned int,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct rt305x_esw *esw, unsigned reg,
		    unsigned long mask, unsigned long val)
{
	unsigned long flags;

	FUNC1(&esw->reg_rw_lock, flags);
	FUNC0(esw, reg, mask, val);
	FUNC2(&esw->reg_rw_lock, flags);
}