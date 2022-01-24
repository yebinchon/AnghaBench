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
struct tc {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int /*<<< orphan*/  MVPCONTROL_VPC ; 
 int /*<<< orphan*/  TCHALT_H ; 
 int TCSTATUS_A ; 
 int TCSTATUS_DA ; 
 int TCSTATUS_IXMT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 () ; 
 unsigned int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

void FUNC13(struct tc *tc)
{
	unsigned long flags;
	unsigned int mtflags, vpflags;
	int tmp;

	FUNC6(flags);
	mtflags = FUNC1();
	vpflags = FUNC2();
	/* Put MVPE's into 'configuration state' */
	FUNC9(MVPCONTROL_VPC);

	FUNC10(tc->index);
	tmp = FUNC8();

	/* mark not allocated and not dynamically allocatable */
	tmp &= ~(TCSTATUS_A | TCSTATUS_DA);
	tmp |= TCSTATUS_IXMT;	/* interrupt exempt */
	FUNC12(tmp);

	FUNC11(TCHALT_H);
	FUNC7();

	FUNC0(MVPCONTROL_VPC);
	FUNC4(vpflags);
	FUNC3(mtflags);
	FUNC5(flags);
}