#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int tx_oe; int output_sel; } ;
union cvmx_gpio_bit_cfgx {void* u64; TYPE_1__ s; } ;
struct TYPE_4__ {int ppc_en; int ppc_active_high_en; } ;
union cvm_usbdrd_uctl_host_cfg {void* u64; TYPE_2__ s; } ;
typedef  int uint32_t ;
typedef  int u64 ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  OCTEON_CN73XX ; 
 int /*<<< orphan*/  OCTEON_CNF75XX ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ UCTL_HOST_CFG ; 
 void* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,void*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*) ; 
 int /*<<< orphan*/ * FUNC7 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct device_node*,char*,int*,int) ; 

__attribute__((used)) static int FUNC9(struct device *dev, u64 base)
{
#define UCTL_HOST_CFG	0xe0
	union cvm_usbdrd_uctl_host_cfg uctl_host_cfg;
	union cvmx_gpio_bit_cfgx gpio_bit;
	uint32_t gpio_pwr[3];
	int gpio, len, power_active_low;
	struct device_node *node = dev->of_node;
	int index = (base >> 24) & 1;

	if (FUNC7(node, "power", &len) != NULL) {
		if (len == 12) {
			FUNC8(node, "power", gpio_pwr, 3);
			power_active_low = gpio_pwr[2] & 0x01;
			gpio = gpio_pwr[1];
		} else if (len == 8) {
			FUNC8(node, "power", gpio_pwr, 2);
			power_active_low = 0;
			gpio = gpio_pwr[1];
		} else {
			FUNC5(dev, "dwc3 controller clock init failure.\n");
			return -EINVAL;
		}
		if ((FUNC2(OCTEON_CN73XX) ||
		    FUNC2(OCTEON_CNF75XX))
		    && gpio <= 31) {
			gpio_bit.u64 = FUNC3(FUNC0(gpio));
			gpio_bit.s.tx_oe = 1;
			gpio_bit.s.output_sel = (index == 0 ? 0x14 : 0x15);
			FUNC4(FUNC0(gpio), gpio_bit.u64);
		} else if (gpio <= 15) {
			gpio_bit.u64 = FUNC3(FUNC0(gpio));
			gpio_bit.s.tx_oe = 1;
			gpio_bit.s.output_sel = (index == 0 ? 0x14 : 0x19);
			FUNC4(FUNC0(gpio), gpio_bit.u64);
		} else {
			gpio_bit.u64 = FUNC3(FUNC1(gpio));
			gpio_bit.s.tx_oe = 1;
			gpio_bit.s.output_sel = (index == 0 ? 0x14 : 0x19);
			FUNC4(FUNC1(gpio), gpio_bit.u64);
		}

		/* Enable XHCI power control and set if active high or low. */
		uctl_host_cfg.u64 = FUNC3(base + UCTL_HOST_CFG);
		uctl_host_cfg.s.ppc_en = 1;
		uctl_host_cfg.s.ppc_active_high_en = !power_active_low;
		FUNC4(base + UCTL_HOST_CFG, uctl_host_cfg.u64);
	} else {
		/* Disable XHCI power control and set if active high. */
		uctl_host_cfg.u64 = FUNC3(base + UCTL_HOST_CFG);
		uctl_host_cfg.s.ppc_en = 0;
		uctl_host_cfg.s.ppc_active_high_en = 0;
		FUNC4(base + UCTL_HOST_CFG, uctl_host_cfg.u64);
		FUNC6(dev, "dwc3 controller clock init failure.\n");
	}
	return 0;
}