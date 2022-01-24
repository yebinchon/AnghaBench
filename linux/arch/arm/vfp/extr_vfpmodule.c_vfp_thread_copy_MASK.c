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
struct TYPE_3__ {int /*<<< orphan*/  cpu; } ;
struct TYPE_4__ {TYPE_1__ hard; } ;
struct thread_info {TYPE_2__ vfpstate; } ;

/* Variables and functions */
 int /*<<< orphan*/  NR_CPUS ; 
 struct thread_info* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct thread_info*) ; 

__attribute__((used)) static void FUNC2(struct thread_info *thread)
{
	struct thread_info *parent = FUNC0();

	FUNC1(parent);
	thread->vfpstate = parent->vfpstate;
#ifdef CONFIG_SMP
	thread->vfpstate.hard.cpu = NR_CPUS;
#endif
}