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
struct opal_dev {int dummy; } ;

/* Variables and functions */
 size_t OPAL_ADMINSP_UID ; 
 size_t OPAL_REVERT ; 
 int FUNC0 (struct opal_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct opal_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * opalmethod ; 
 int /*<<< orphan*/ * opaluid ; 
 int /*<<< orphan*/  parse_and_check_status ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(struct opal_dev *dev, void *data)
{
	int err;

	err = FUNC0(dev, opaluid[OPAL_ADMINSP_UID],
			opalmethod[OPAL_REVERT]);
	if (err) {
		FUNC2("Error building REVERT TPER command.\n");
		return err;
	}

	return FUNC1(dev, parse_and_check_status);
}