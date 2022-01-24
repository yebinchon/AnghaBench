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
struct thread_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct thread_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct thread_info*) ; 
 int /*<<< orphan*/  current ; 
 struct thread_info* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(void)
{
#if XTENSA_HAVE_COPROCESSORS
	struct thread_info *ti = current_thread_info();
	coprocessor_flush_all(ti);
	coprocessor_release_all(ti);
#endif
	FUNC3(current);
}