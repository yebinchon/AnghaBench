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
struct regmap_field {int dummy; } ;
struct reg_field {int reg; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  syscfg_eng; struct device* cpu; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct regmap_field*) ; 
 int FUNC1 (struct regmap_field*) ; 
 TYPE_1__ ddata ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 struct regmap_field* FUNC3 (struct device*,int /*<<< orphan*/ ,struct reg_field) ; 
 int FUNC4 (struct regmap_field*,unsigned int*) ; 

__attribute__((used)) static int FUNC5(const struct reg_field *reg_fields,
					  int hw_info_offset, int field)
{
	struct regmap_field *regmap_field;
	struct reg_field reg_field = reg_fields[field];
	struct device *dev = ddata.cpu;
	unsigned int value;
	int ret;

	reg_field.reg = hw_info_offset;
	regmap_field = FUNC3(dev,
					       ddata.syscfg_eng,
					       reg_field);
	if (FUNC0(regmap_field)) {
		FUNC2(dev, "Failed to allocate reg field\n");
		return FUNC1(regmap_field);
	}

	ret = FUNC4(regmap_field, &value);
	if (ret) {
		FUNC2(dev, "Failed to read %s code\n",
			field ? "SUBSTRATE" : "PCODE");
		return ret;
	}

	return value;
}