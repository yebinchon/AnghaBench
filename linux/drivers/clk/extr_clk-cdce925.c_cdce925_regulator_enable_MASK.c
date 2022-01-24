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
struct regulator {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct regulator*) ; 
 int FUNC1 (struct regulator*) ; 
 int /*<<< orphan*/  cdce925_regulator_disable ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,char const*,int) ; 
 int FUNC3 (struct device*,int /*<<< orphan*/ ,struct regulator*) ; 
 struct regulator* FUNC4 (struct device*,char const*) ; 
 int FUNC5 (struct regulator*) ; 

__attribute__((used)) static int FUNC6(struct device *dev, const char *name)
{
	struct regulator *regulator;
	int err;

	regulator = FUNC4(dev, name);
	if (FUNC0(regulator))
		return FUNC1(regulator);

	err = FUNC5(regulator);
	if (err) {
		FUNC2(dev, "Failed to enable %s: %d\n", name, err);
		return err;
	}

	return FUNC3(dev, cdce925_regulator_disable,
					regulator);
}