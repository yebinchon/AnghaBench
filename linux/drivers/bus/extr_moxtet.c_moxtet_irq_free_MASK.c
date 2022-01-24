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
struct TYPE_2__ {int exists; int /*<<< orphan*/  domain; } ;
struct moxtet {TYPE_1__ irq; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int MOXTET_NIRQS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct moxtet *moxtet)
{
	int i, irq;

	for (i = 0; i < MOXTET_NIRQS; ++i) {
		if (moxtet->irq.exists & FUNC0(i)) {
			irq = FUNC3(moxtet->irq.domain, i);
			FUNC1(irq);
		}
	}

	FUNC2(moxtet->irq.domain);
}