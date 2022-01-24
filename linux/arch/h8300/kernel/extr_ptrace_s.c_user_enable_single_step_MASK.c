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
struct task_struct {int dummy; } ;

/* Variables and functions */
 unsigned char EXR_TRACE ; 
 int /*<<< orphan*/  PT_EXR ; 
 unsigned char FUNC0 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*,int /*<<< orphan*/ ,unsigned char) ; 

void FUNC2(struct task_struct *child)
{
	unsigned char exr;

	exr = FUNC0(child, PT_EXR);
	exr |= EXR_TRACE;
	FUNC1(child, PT_EXR, exr);
}