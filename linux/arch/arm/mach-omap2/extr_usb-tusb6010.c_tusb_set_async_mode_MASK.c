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
struct gpmc_timings {int dummy; } ;
struct gpmc_device_timings {int t_ceasu; unsigned int t_avdasu; int t_ce_avd; unsigned int t_avdp_r; unsigned int t_oeasu; int t_oe; int t_cez_r; int t_cez_w; unsigned int t_avdp_w; unsigned int t_weasu; int t_wpl; int cyc_aavdh_we; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  async_cs ; 
 int /*<<< orphan*/  FUNC0 (struct gpmc_timings*,int /*<<< orphan*/ *,struct gpmc_device_timings*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct gpmc_timings*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct gpmc_device_timings*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  tusb_async ; 

__attribute__((used)) static int FUNC3(unsigned sysclk_ps)
{
	struct gpmc_device_timings dev_t;
	struct gpmc_timings	t;
	unsigned		t_acsnh_advnh = sysclk_ps + 3000;

	FUNC2(&dev_t, 0, sizeof(dev_t));

	dev_t.t_ceasu = 8 * 1000;
	dev_t.t_avdasu = t_acsnh_advnh - 7000;
	dev_t.t_ce_avd = 1000;
	dev_t.t_avdp_r = t_acsnh_advnh;
	dev_t.t_oeasu = t_acsnh_advnh + 1000;
	dev_t.t_oe = 300;
	dev_t.t_cez_r = 7000;
	dev_t.t_cez_w = dev_t.t_cez_r;
	dev_t.t_avdp_w = t_acsnh_advnh;
	dev_t.t_weasu = t_acsnh_advnh + 1000;
	dev_t.t_wpl = 300;
	dev_t.cyc_aavdh_we = 1;

	FUNC0(&t, &tusb_async, &dev_t);

	return FUNC1(async_cs, &t, &tusb_async);
}