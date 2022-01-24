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
typedef  int u8 ;
typedef  int u32 ;
struct TYPE_2__ {scalar_t__ expires; } ;
struct pmac_i2c_host_kw {int speed; int* data; int len; scalar_t__ state; int result; int rw; int /*<<< orphan*/  lock; int /*<<< orphan*/  complete; TYPE_1__ timeout_timer; int /*<<< orphan*/  polled; scalar_t__ irq; } ;
struct pmac_i2c_bus {int mode; int channel; int /*<<< orphan*/  polled; struct pmac_i2c_host_kw* hostdata; } ;

/* Variables and functions */
 int EINVAL ; 
 int KW_I2C_CTL_XADDR ; 
 int KW_I2C_IRQ_MASK ; 
 int KW_I2C_MODE_COMBINED ; 
 int KW_I2C_MODE_MODE_MASK ; 
 int KW_I2C_MODE_STANDARD ; 
 int KW_I2C_MODE_STANDARDSUB ; 
 scalar_t__ KW_POLL_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct pmac_i2c_host_kw*,int) ; 
 int FUNC2 (struct pmac_i2c_host_kw*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
#define  pmac_i2c_mode_combined 131 
#define  pmac_i2c_mode_dumb 130 
#define  pmac_i2c_mode_std 129 
#define  pmac_i2c_mode_stdsub 128 
 int /*<<< orphan*/  reg_addr ; 
 int /*<<< orphan*/  reg_control ; 
 int /*<<< orphan*/  reg_ier ; 
 int /*<<< orphan*/  reg_isr ; 
 int /*<<< orphan*/  reg_mode ; 
 int /*<<< orphan*/  reg_status ; 
 int /*<<< orphan*/  reg_subaddr ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ state_addr ; 
 scalar_t__ state_idle ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct pmac_i2c_bus *bus, u8 addrdir, int subsize,
		       u32 subaddr, u8 *data, int len)
{
	struct pmac_i2c_host_kw *host = bus->hostdata;
	u8 mode_reg = host->speed;
	int use_irq = host->irq && !bus->polled;

	/* Setup mode & subaddress if any */
	switch(bus->mode) {
	case pmac_i2c_mode_dumb:
		return -EINVAL;
	case pmac_i2c_mode_std:
		mode_reg |= KW_I2C_MODE_STANDARD;
		if (subsize != 0)
			return -EINVAL;
		break;
	case pmac_i2c_mode_stdsub:
		mode_reg |= KW_I2C_MODE_STANDARDSUB;
		if (subsize != 1)
			return -EINVAL;
		break;
	case pmac_i2c_mode_combined:
		mode_reg |= KW_I2C_MODE_COMBINED;
		if (subsize != 1)
			return -EINVAL;
		break;
	}

	/* Setup channel & clear pending irqs */
	FUNC4(reg_isr, FUNC3(reg_isr));
	FUNC4(reg_mode, mode_reg | (bus->channel << 4));
	FUNC4(reg_status, 0);

	/* Set up address and r/w bit, strip possible stale bus number from
	 * address top bits
	 */
	FUNC4(reg_addr, addrdir & 0xff);

	/* Set up the sub address */
	if ((mode_reg & KW_I2C_MODE_MODE_MASK) == KW_I2C_MODE_STANDARDSUB
	    || (mode_reg & KW_I2C_MODE_MODE_MASK) == KW_I2C_MODE_COMBINED)
		FUNC4(reg_subaddr, subaddr);

	/* Prepare for async operations */
	host->data = data;
	host->len = len;
	host->state = state_addr;
	host->result = 0;
	host->rw = (addrdir & 1);
	host->polled = bus->polled;

	/* Enable interrupt if not using polled mode and interrupt is
	 * available
	 */
	if (use_irq) {
		/* Clear completion */
		FUNC5(&host->complete);
		/* Ack stale interrupts */
		FUNC4(reg_isr, FUNC3(reg_isr));
		/* Arm timeout */
		host->timeout_timer.expires = jiffies + KW_POLL_TIMEOUT;
		FUNC0(&host->timeout_timer);
		/* Enable emission */
		FUNC4(reg_ier, KW_I2C_IRQ_MASK);
	}

	/* Start sending address */
	FUNC4(reg_control, KW_I2C_CTL_XADDR);

	/* Wait for completion */
	if (use_irq)
		FUNC8(&host->complete);
	else {
		while(host->state != state_idle) {
			unsigned long flags;

			u8 isr = FUNC2(host);
			FUNC6(&host->lock, flags);
			FUNC1(host, isr);
			FUNC7(&host->lock, flags);
		}
	}

	/* Disable emission */
	FUNC4(reg_ier, 0);

	return host->result;
}