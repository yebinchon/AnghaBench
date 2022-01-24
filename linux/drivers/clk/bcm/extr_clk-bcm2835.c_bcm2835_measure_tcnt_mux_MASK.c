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
struct bcm2835_cprman {int /*<<< orphan*/  regs_lock; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int CM_BUSY ; 
 int CM_KILL ; 
 int /*<<< orphan*/  CM_OSCCOUNT ; 
 int CM_SRC_BITS ; 
 int CM_SRC_MASK ; 
 int /*<<< orphan*/  CM_TCNTCNT ; 
 int /*<<< orphan*/  CM_TCNTCTL ; 
 int CM_TCNT_SRC1_SHIFT ; 
 int /*<<< orphan*/  LOCK_TIMEOUT_NS ; 
 int FUNC0 (struct bcm2835_cprman*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm2835_cprman*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned long FUNC10(struct bcm2835_cprman *cprman,
					      u32 tcnt_mux)
{
	u32 osccount = 19200; /* 1ms */
	u32 count;
	ktime_t timeout;

	FUNC8(&cprman->regs_lock);

	FUNC1(cprman, CM_TCNTCTL, CM_KILL);

	FUNC1(cprman, CM_TCNTCTL,
		     (tcnt_mux & CM_SRC_MASK) |
		     (tcnt_mux >> CM_SRC_BITS) << CM_TCNT_SRC1_SHIFT);

	FUNC1(cprman, CM_OSCCOUNT, osccount);

	/* do a kind delay at the start */
	FUNC7(1);

	/* Finish off whatever is left of OSCCOUNT */
	timeout = FUNC4(FUNC6(), LOCK_TIMEOUT_NS);
	while (FUNC0(cprman, CM_OSCCOUNT)) {
		if (FUNC5(FUNC6(), timeout)) {
			FUNC3(cprman->dev, "timeout waiting for OSCCOUNT\n");
			count = 0;
			goto out;
		}
		FUNC2();
	}

	/* Wait for BUSY to clear. */
	timeout = FUNC4(FUNC6(), LOCK_TIMEOUT_NS);
	while (FUNC0(cprman, CM_TCNTCTL) & CM_BUSY) {
		if (FUNC5(FUNC6(), timeout)) {
			FUNC3(cprman->dev, "timeout waiting for !BUSY\n");
			count = 0;
			goto out;
		}
		FUNC2();
	}

	count = FUNC0(cprman, CM_TCNTCNT);

	FUNC1(cprman, CM_TCNTCTL, 0);

out:
	FUNC9(&cprman->regs_lock);

	return count * 1000;
}