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
struct spu_context {int /*<<< orphan*/  cpus_allowed; } ;
struct cpumask {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cpumask const*,int /*<<< orphan*/ *) ; 
 struct cpumask* FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct spu_context *ctx, int node)
{
	if (FUNC2(node)) {
		const struct cpumask *mask = FUNC1(node);

		if (FUNC0(mask, &ctx->cpus_allowed))
			return 1;
	}

	return 0;
}