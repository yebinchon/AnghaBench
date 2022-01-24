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
struct uml_pt_regs {int dummy; } ;
struct siginfo {int dummy; } ;
struct faultinfo {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct faultinfo*) ; 
 struct faultinfo* FUNC1 (struct uml_pt_regs*) ; 
 int /*<<< orphan*/  FUNC2 (struct uml_pt_regs*) ; 
 scalar_t__ FUNC3 (struct uml_pt_regs*) ; 
 int /*<<< orphan*/  FUNC4 (struct faultinfo,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct faultinfo,int /*<<< orphan*/ ,scalar_t__,struct uml_pt_regs*) ; 
 int /*<<< orphan*/  FUNC6 (struct uml_pt_regs*) ; 

void FUNC7(int sig, struct siginfo *unused_si, struct uml_pt_regs *regs)
{
	struct faultinfo * fi = FUNC1(regs);

	if (FUNC3(regs) && !FUNC0(fi)) {
		FUNC6(regs);
		FUNC4(*fi, FUNC2(regs));
		return;
	}
	FUNC5(*fi, FUNC2(regs), FUNC3(regs), regs);
}