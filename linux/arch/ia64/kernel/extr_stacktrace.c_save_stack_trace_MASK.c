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
struct stack_trace {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ia64_do_save_stack ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct stack_trace*) ; 

void FUNC1(struct stack_trace *trace)
{
	FUNC0(ia64_do_save_stack, trace);
}