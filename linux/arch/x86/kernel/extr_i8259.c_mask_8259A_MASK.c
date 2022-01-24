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
 int /*<<< orphan*/  PIC_MASTER_IMR ; 
 int /*<<< orphan*/  PIC_SLAVE_IMR ; 
 int /*<<< orphan*/  i8259A_lock ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(void)
{
	unsigned long flags;

	FUNC1(&i8259A_lock, flags);

	FUNC0(0xff, PIC_MASTER_IMR);	/* mask all of 8259A-1 */
	FUNC0(0xff, PIC_SLAVE_IMR);	/* mask all of 8259A-2 */

	FUNC2(&i8259A_lock, flags);
}