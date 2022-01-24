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
typedef  int u32 ;
typedef  int nvmem_cell ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOENT ; 
 int EPROBE_DEFER ; 
 scalar_t__ FUNC0 (int*) ; 
 int NVMEM_MASK ; 
 int NVMEM_SHIFT ; 
 int FUNC1 (int*) ; 
 struct device_node* FUNC2 (struct device*) ; 
 struct device* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 int* FUNC6 (int*,size_t*) ; 
 int FUNC7 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct device_node*) ; 
 int* FUNC9 (struct device_node*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 

__attribute__((used)) static int FUNC11(u32 *versions)
{
	struct nvmem_cell *speedbin_nvmem;
	struct device_node *np;
	struct device *cpu_dev;
	u32 *speedbin, efuse_value;
	size_t len;
	int ret;

	cpu_dev = FUNC3(0);
	if (!cpu_dev)
		return -ENODEV;

	np = FUNC2(cpu_dev);
	if (!np)
		return -ENOENT;

	ret = FUNC7(np,
				      "allwinner,sun50i-h6-operating-points");
	if (!ret) {
		FUNC8(np);
		return -ENOENT;
	}

	speedbin_nvmem = FUNC9(np, NULL);
	FUNC8(np);
	if (FUNC0(speedbin_nvmem)) {
		if (FUNC1(speedbin_nvmem) != -EPROBE_DEFER)
			FUNC10("Could not get nvmem cell: %ld\n",
			       FUNC1(speedbin_nvmem));
		return FUNC1(speedbin_nvmem);
	}

	speedbin = FUNC6(speedbin_nvmem, &len);
	FUNC5(speedbin_nvmem);
	if (FUNC0(speedbin))
		return FUNC1(speedbin);

	efuse_value = (*speedbin >> NVMEM_SHIFT) & NVMEM_MASK;
	switch (efuse_value) {
	case 0b0001:
		*versions = 1;
		break;
	case 0b0011:
		*versions = 2;
		break;
	default:
		/*
		 * For other situations, we treat it as bin0.
		 * This vf table can be run for any good cpu.
		 */
		*versions = 0;
		break;
	}

	FUNC4(speedbin);
	return 0;
}