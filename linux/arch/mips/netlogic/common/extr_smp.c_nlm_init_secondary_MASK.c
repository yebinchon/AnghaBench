#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  package; } ;

/* Variables and functions */
 int NLM_THREADS_PER_CORE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 TYPE_1__ current_cpu_data ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(void)
{
	int hwtid;

	hwtid = FUNC1();
	FUNC0(&current_cpu_data, hwtid / NLM_THREADS_PER_CORE);
	current_cpu_data.package = FUNC2();
	FUNC3(hwtid);
	FUNC4(hwtid);
}