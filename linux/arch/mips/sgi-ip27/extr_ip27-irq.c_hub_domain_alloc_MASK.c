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
struct irq_domain {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  affinity; int /*<<< orphan*/  node; } ;
struct irq_desc {TYPE_1__ irq_common_data; } ;
struct irq_alloc_info {int /*<<< orphan*/  nasid; } ;
struct hub_irq_data {int dummy; } ;
struct hub_data {int /*<<< orphan*/  h_cpus; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  handle_level_irq ; 
 struct hub_data* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hub_irq_type ; 
 int /*<<< orphan*/  FUNC5 (struct irq_domain*,unsigned int,int,int /*<<< orphan*/ *,struct hub_irq_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct irq_desc* FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct hub_irq_data*) ; 
 struct hub_irq_data* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct hub_irq_data*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct irq_domain *domain, unsigned int virq,
			    unsigned int nr_irqs, void *arg)
{
	struct irq_alloc_info *info = arg;
	struct hub_irq_data *hd;
	struct hub_data *hub;
	struct irq_desc *desc;
	int swlevel;

	if (nr_irqs > 1 || !info)
		return -EINVAL;

	hd = FUNC8(sizeof(*hd), GFP_KERNEL);
	if (!hd)
		return -ENOMEM;

	swlevel = FUNC2();
	if (FUNC10(swlevel < 0)) {
		FUNC7(hd);
		return -EAGAIN;
	}
	FUNC5(domain, virq, swlevel, &hub_irq_type, hd,
			    handle_level_irq, NULL, NULL);

	/* use CPU connected to nearest hub */
	hub = FUNC4(FUNC0(info->nasid));
	FUNC9(hd, &hub->h_cpus);

	/* Make sure it's not already pending when we connect it. */
	FUNC1(info->nasid, swlevel);

	desc = FUNC6(virq);
	desc->irq_common_data.node = info->nasid;
	FUNC3(desc->irq_common_data.affinity, &hub->h_cpus);

	return 0;
}