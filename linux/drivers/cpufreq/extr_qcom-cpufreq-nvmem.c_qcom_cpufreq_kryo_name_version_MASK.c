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
typedef  scalar_t__ u8 ;
struct qcom_cpufreq_drv {int versions; } ;
struct nvmem_cell {int dummy; } ;
struct device {int dummy; } ;
typedef  enum _msm8996_version { ____Placeholder__msm8996_version } _msm8996_version ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int ENODEV ; 
 scalar_t__ FUNC1 (scalar_t__*) ; 
#define  MSM8996_SG 129 
#define  MSM8996_V3 128 
 int NUM_OF_MSM8996_VERSIONS ; 
 int FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 
 scalar_t__* FUNC5 (struct nvmem_cell*,size_t*) ; 
 int FUNC6 () ; 

__attribute__((used)) static int FUNC7(struct device *cpu_dev,
					  struct nvmem_cell *speedbin_nvmem,
					  struct qcom_cpufreq_drv *drv)
{
	size_t len;
	u8 *speedbin;
	enum _msm8996_version msm8996_version;

	msm8996_version = FUNC6();
	if (NUM_OF_MSM8996_VERSIONS == msm8996_version) {
		FUNC3(cpu_dev, "Not Snapdragon 820/821!");
		return -ENODEV;
	}

	speedbin = FUNC5(speedbin_nvmem, &len);
	if (FUNC1(speedbin))
		return FUNC2(speedbin);

	switch (msm8996_version) {
	case MSM8996_V3:
		drv->versions = 1 << (unsigned int)(*speedbin);
		break;
	case MSM8996_SG:
		drv->versions = 1 << ((unsigned int)(*speedbin) + 4);
		break;
	default:
		FUNC0();
		break;
	}

	FUNC4(speedbin);
	return 0;
}