#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct fpu {int dummy; } ;
struct TYPE_3__ {struct fpu fpu; } ;
struct TYPE_4__ {TYPE_1__ thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct fpu*) ; 
 TYPE_2__* current ; 

void FUNC2(struct fpu *fpu)
{
	/*
	 * Only stopped child tasks can be used to modify the FPU
	 * state in the fpstate buffer:
	 */
	FUNC0(fpu == &current->thread.fpu);

	/* Invalidate any cached state: */
	FUNC1(fpu);
}