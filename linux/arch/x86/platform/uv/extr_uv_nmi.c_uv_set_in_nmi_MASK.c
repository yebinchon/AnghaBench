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
struct uv_hub_nmi_s {int /*<<< orphan*/  nmi_count; int /*<<< orphan*/  cpu_owner; int /*<<< orphan*/  in_nmi; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  uv_in_nmi ; 
 int /*<<< orphan*/  uv_nmi_cpu ; 

__attribute__((used)) static int FUNC3(int cpu, struct uv_hub_nmi_s *hub_nmi)
{
	int first = FUNC0(&hub_nmi->in_nmi, 1, 1);

	if (first) {
		FUNC2(&hub_nmi->cpu_owner, cpu);
		if (FUNC0(&uv_in_nmi, 1, 1))
			FUNC2(&uv_nmi_cpu, cpu);

		FUNC1(&hub_nmi->nmi_count);
	}
	return first;
}