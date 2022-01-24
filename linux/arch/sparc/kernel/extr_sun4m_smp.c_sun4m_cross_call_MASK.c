#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  smpfunc_t ;
typedef  int /*<<< orphan*/  cpumask_t ;
struct TYPE_2__ {unsigned long arg1; unsigned long arg2; unsigned long arg3; unsigned long arg4; int* processors_in; int* processors_out; scalar_t__ arg5; int /*<<< orphan*/  func; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_CROSS_CALL ; 
 int SUN4M_NCPUS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__ ccall_info ; 
 int /*<<< orphan*/  cpu_online_mask ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cross_call_lock ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(smpfunc_t func, cpumask_t mask, unsigned long arg1,
			     unsigned long arg2, unsigned long arg3,
			     unsigned long arg4)
{
		register int ncpus = SUN4M_NCPUS;
		unsigned long flags;

		FUNC5(&cross_call_lock, flags);

		/* Init function glue. */
		ccall_info.func = func;
		ccall_info.arg1 = arg1;
		ccall_info.arg2 = arg2;
		ccall_info.arg3 = arg3;
		ccall_info.arg4 = arg4;
		ccall_info.arg5 = 0;

		/* Init receive/complete mapping, plus fire the IPI's off. */
		{
			register int i;

			FUNC2(FUNC4(), &mask);
			FUNC1(&mask, cpu_online_mask, &mask);
			for (i = 0; i < ncpus; i++) {
				if (FUNC3(i, &mask)) {
					ccall_info.processors_in[i] = 0;
					ccall_info.processors_out[i] = 0;
					FUNC7(i, IRQ_CROSS_CALL);
				} else {
					ccall_info.processors_in[i] = 1;
					ccall_info.processors_out[i] = 1;
				}
			}
		}

		{
			register int i;

			i = 0;
			do {
				if (!FUNC3(i, &mask))
					continue;
				while (!ccall_info.processors_in[i])
					FUNC0();
			} while (++i < ncpus);

			i = 0;
			do {
				if (!FUNC3(i, &mask))
					continue;
				while (!ccall_info.processors_out[i])
					FUNC0();
			} while (++i < ncpus);
		}
		FUNC6(&cross_call_lock, flags);
}