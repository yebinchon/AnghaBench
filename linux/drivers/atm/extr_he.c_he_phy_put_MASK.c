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
struct he_dev {int /*<<< orphan*/  global_lock; } ;
struct atm_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ FRAMER ; 
 struct he_dev* FUNC0 (struct atm_dev*) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned char,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct he_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct he_dev*,unsigned char,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC6(struct atm_dev *atm_dev, unsigned char val, unsigned long addr)
{
	unsigned long flags;
	struct he_dev *he_dev = FUNC0(atm_dev);

	FUNC1("phy_put(val 0x%x, addr 0x%lx)\n", val, addr);

	FUNC4(&he_dev->global_lock, flags);
	FUNC3(he_dev, val, FRAMER + (addr*4));
	(void) FUNC2(he_dev, FRAMER + (addr*4));		/* flush posted writes */
	FUNC5(&he_dev->global_lock, flags);
}