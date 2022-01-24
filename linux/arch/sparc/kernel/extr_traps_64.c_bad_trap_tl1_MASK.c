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
struct tl1_traplog {int dummy; } ;
struct pt_regs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIE_TRAP_TL1 ; 
 scalar_t__ NOTIFY_STOP ; 
 int /*<<< orphan*/  SIGTRAP ; 
 int /*<<< orphan*/  FUNC0 (char*,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC1 (struct tl1_traplog*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,struct pt_regs*,int /*<<< orphan*/ ,long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,long) ; 

void FUNC4(struct pt_regs *regs, long lvl)
{
	char buffer[36];
	
	if (FUNC2(DIE_TRAP_TL1, "bad trap tl1", regs,
		       0, lvl, SIGTRAP) == NOTIFY_STOP)
		return;

	FUNC1((struct tl1_traplog *)(regs + 1));

	FUNC3 (buffer, "Bad trap %lx at tl>0", lvl);
	FUNC0 (buffer, regs);
}