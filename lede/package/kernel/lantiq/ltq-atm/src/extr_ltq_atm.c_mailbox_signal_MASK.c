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
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned int,int,int /*<<< orphan*/ ) ; 
 unsigned int FIRST_QSB_QID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MBOX_IGU3_ISR ; 
 int /*<<< orphan*/ * MBOX_IGU3_ISRS ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 scalar_t__ FUNC3 (unsigned int) ; 

__attribute__((used)) static inline void FUNC4(unsigned int queue, int is_tx)
{
	int count = 1000;

	if ( is_tx ) {
		while ( FUNC3(queue + FIRST_QSB_QID + 16) && count > 0 )
			count--;
		*MBOX_IGU3_ISRS = FUNC2(queue + FIRST_QSB_QID + 16);
	} else {
		while ( FUNC3(queue) && count > 0 )
			count--;
		*MBOX_IGU3_ISRS = FUNC2(queue);
	}

	FUNC0(count > 0, "queue = %u, is_tx = %d, MBOX_IGU3_ISR = 0x%08x", queue, is_tx, FUNC1(MBOX_IGU3_ISR));
}