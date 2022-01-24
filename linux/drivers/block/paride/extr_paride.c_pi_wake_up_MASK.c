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
struct TYPE_2__ {void (* claim_cont ) () ;int claimed; int /*<<< orphan*/  parq; int /*<<< orphan*/  pardev; } ;
typedef  TYPE_1__ PIA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pi_spinlock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void *p)
{
	PIA *pi = (PIA *) p;
	unsigned long flags;
	void (*cont) (void) = NULL;

	FUNC1(&pi_spinlock, flags);

	if (pi->claim_cont && !FUNC0(pi->pardev)) {
		cont = pi->claim_cont;
		pi->claim_cont = NULL;
		pi->claimed = 1;
	}

	FUNC2(&pi_spinlock, flags);

	FUNC3(&(pi->parq));

	if (cont)
		cont();
}