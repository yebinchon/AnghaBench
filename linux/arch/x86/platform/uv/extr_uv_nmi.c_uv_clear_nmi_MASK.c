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
struct uv_hub_nmi_s {int /*<<< orphan*/  nmi_lock; scalar_t__ hub_present; int /*<<< orphan*/  in_nmi; int /*<<< orphan*/  cpu_owner; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct uv_hub_nmi_s* uv_hub_nmi ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static inline void FUNC5(int cpu)
{
	struct uv_hub_nmi_s *hub_nmi = uv_hub_nmi;

	if (cpu == FUNC0(&hub_nmi->cpu_owner)) {
		FUNC1(&hub_nmi->cpu_owner, -1);
		FUNC1(&hub_nmi->in_nmi, 0);
		if (hub_nmi->hub_present)
			FUNC3();
		else
			FUNC4();
		FUNC2(&hub_nmi->nmi_lock);
	}
}