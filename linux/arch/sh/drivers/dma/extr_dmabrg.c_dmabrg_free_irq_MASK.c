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
struct TYPE_2__ {int /*<<< orphan*/ * data; int /*<<< orphan*/ * handler; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 TYPE_1__* dmabrg_handlers ; 
 scalar_t__ FUNC1 (int) ; 

void FUNC2(unsigned int dmairq)
{
	if (FUNC1(dmairq < 10)) {
		FUNC0(dmairq);
		dmabrg_handlers[dmairq].handler = NULL;
		dmabrg_handlers[dmairq].data = NULL;
	}
}