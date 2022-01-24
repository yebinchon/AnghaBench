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
struct platform_device {int dummy; } ;
struct n2rng {int /*<<< orphan*/  work; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  HV_GRP_RNG ; 
 int /*<<< orphan*/  N2RNG_FLAG_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct n2rng* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct platform_device *op)
{
	struct n2rng *np = FUNC1(op);

	np->flags |= N2RNG_FLAG_SHUTDOWN;

	FUNC0(&np->work);

	FUNC2(HV_GRP_RNG);

	return 0;
}