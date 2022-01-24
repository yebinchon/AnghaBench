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
struct reg_field {int dummy; } ;
struct opp_table {int dummy; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct TYPE_2__ {struct device* cpu; } ;

/* Variables and functions */
 unsigned int FUNC0 (int) ; 
 int DEFAULT_VERSION ; 
 int ENODEV ; 
 int /*<<< orphan*/  HW_INFO_INDEX ; 
 scalar_t__ FUNC1 (struct opp_table*) ; 
 int MAX_PCODE_NAME_LEN ; 
 int /*<<< orphan*/  PCODE ; 
 int FUNC2 (struct opp_table*) ; 
 int /*<<< orphan*/  SUBSTRATE ; 
 int VERSION_ELEMENTS ; 
 TYPE_1__ ddata ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,unsigned int,unsigned int,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 struct opp_table* FUNC5 (struct device*,char*) ; 
 struct opp_table* FUNC6 (struct device*,unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*) ; 
 int FUNC8 (struct device_node*,char*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,int) ; 
 int FUNC10 () ; 
 int FUNC11 () ; 
 int FUNC12 (struct reg_field const*,unsigned int,int /*<<< orphan*/ ) ; 
 struct reg_field* FUNC13 () ; 

__attribute__((used)) static int FUNC14(void)
{
	struct device *dev = ddata.cpu;
	struct device_node *np = dev->of_node;
	const struct reg_field *reg_fields;
	unsigned int hw_info_offset;
	unsigned int version[VERSION_ELEMENTS];
	int pcode, substrate, major, minor;
	int ret;
	char name[MAX_PCODE_NAME_LEN];
	struct opp_table *opp_table;

	reg_fields = FUNC13();
	if (!reg_fields) {
		FUNC4(dev, "This SoC doesn't support voltage scaling\n");
		return -ENODEV;
	}

	ret = FUNC8(np, "st,syscfg-eng",
					 HW_INFO_INDEX, &hw_info_offset);
	if (ret) {
		FUNC7(dev, "Failed to read HW info offset from DT\n");
		substrate = DEFAULT_VERSION;
		pcode = 0;
		goto use_defaults;
	}

	pcode = FUNC12(reg_fields,
					       hw_info_offset,
					       PCODE);
	if (pcode < 0) {
		FUNC7(dev, "Failed to obtain process code\n");
		/* Use default pcode */
		pcode = 0;
	}

	substrate = FUNC12(reg_fields,
						   hw_info_offset,
						   SUBSTRATE);
	if (substrate) {
		FUNC7(dev, "Failed to obtain substrate code\n");
		/* Use default substrate */
		substrate = DEFAULT_VERSION;
	}

use_defaults:
	major = FUNC10();
	if (major < 0) {
		FUNC4(dev, "Failed to obtain major version\n");
		/* Use default major number */
		major = DEFAULT_VERSION;
	}

	minor = FUNC11();
	if (minor < 0) {
		FUNC4(dev, "Failed to obtain minor version\n");
		/* Use default minor number */
		minor = DEFAULT_VERSION;
	}

	FUNC9(name, MAX_PCODE_NAME_LEN, "pcode%d", pcode);

	opp_table = FUNC5(dev, name);
	if (FUNC1(opp_table)) {
		FUNC4(dev, "Failed to set prop name\n");
		return FUNC2(opp_table);
	}

	version[0] = FUNC0(major);
	version[1] = FUNC0(minor);
	version[2] = FUNC0(substrate);

	opp_table = FUNC6(dev, version, VERSION_ELEMENTS);
	if (FUNC1(opp_table)) {
		FUNC4(dev, "Failed to set supported hardware\n");
		return FUNC2(opp_table);
	}

	FUNC3(dev, "pcode: %d major: %d minor: %d substrate: %d\n",
		pcode, major, minor, substrate);
	FUNC3(dev, "version[0]: %x version[1]: %x version[2]: %x\n",
		version[0], version[1], version[2]);

	return 0;
}