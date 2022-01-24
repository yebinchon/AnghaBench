#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct subsys_interface {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int fclk; int hclk; int pclk; } ;
struct TYPE_5__ {TYPE_1__ max; } ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  armclk ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fclk ; 
 int /*<<< orphan*/  hclk ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned long) ; 
 TYPE_2__ s3c2412_cpufreq_info ; 
 int FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  xtal ; 

__attribute__((used)) static int FUNC7(struct device *dev,
			       struct subsys_interface *sif)
{
	unsigned long fclk_rate;

	hclk = FUNC1(NULL, "hclk");
	if (FUNC0(hclk)) {
		FUNC4("cannot find hclk clock\n");
		return -ENOENT;
	}

	fclk = FUNC1(NULL, "fclk");
	if (FUNC0(fclk)) {
		FUNC4("cannot find fclk clock\n");
		goto err_fclk;
	}

	fclk_rate = FUNC2(fclk);
	if (fclk_rate > 200000000) {
		FUNC5("fclk %ld MHz, assuming 266MHz capable part\n",
			fclk_rate / 1000000);
		s3c2412_cpufreq_info.max.fclk = 266000000;
		s3c2412_cpufreq_info.max.hclk = 133000000;
		s3c2412_cpufreq_info.max.pclk =  66000000;
	}

	armclk = FUNC1(NULL, "armclk");
	if (FUNC0(armclk)) {
		FUNC4("cannot find arm clock\n");
		goto err_armclk;
	}

	xtal = FUNC1(NULL, "xtal");
	if (FUNC0(xtal)) {
		FUNC4("cannot find xtal clock\n");
		goto err_xtal;
	}

	return FUNC6(&s3c2412_cpufreq_info);

err_xtal:
	FUNC3(armclk);
err_armclk:
	FUNC3(fclk);
err_fclk:
	FUNC3(hclk);

	return -ENOENT;
}