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
struct omap_sr {int /*<<< orphan*/  voltdm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct omap_sr*) ; 
 int /*<<< orphan*/  FUNC2 (struct omap_sr*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct omap_sr *sr, int is_volt_reset)
{
	FUNC2(sr);
	FUNC0(sr->voltdm);
	FUNC1(sr);
	if (is_volt_reset)
		FUNC3(sr->voltdm);

	return 0;
}