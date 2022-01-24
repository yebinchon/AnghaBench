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
struct tegra_dfll {size_t mode; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DFLL_DISABLED ; 
 size_t DFLL_OPEN_LOOP ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_dfll*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * mode_name ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct tegra_dfll *td)
{
	if (td->mode != DFLL_OPEN_LOOP) {
		FUNC0(td->dev, "cannot disable DFLL in %s mode\n",
			mode_name[td->mode]);
		return -EINVAL;
	}

	FUNC1(td, DFLL_DISABLED);
	FUNC2(td->dev);

	return 0;
}