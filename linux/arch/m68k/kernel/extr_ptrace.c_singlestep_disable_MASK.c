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
 int /*<<< orphan*/  PT_SR ; 
 int /*<<< orphan*/  TIF_DELAYED_TRACE ; 
 unsigned long TRACE_BITS ; 
 int /*<<< orphan*/  FUNC0 (struct task_struct*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static inline void FUNC3(struct task_struct *child)
{
	unsigned long tmp = FUNC1(child, PT_SR) & ~TRACE_BITS;
	FUNC2(child, PT_SR, tmp);
	FUNC0(child, TIF_DELAYED_TRACE);
}