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
 int /*<<< orphan*/  FUNC1 (char*,unsigned long,unsigned int) ; 
 unsigned int FUNC2 (struct he_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static unsigned char
FUNC5(struct atm_dev *atm_dev, unsigned long addr)
{ 
	unsigned long flags;
	struct he_dev *he_dev = FUNC0(atm_dev);
	unsigned reg;

	FUNC3(&he_dev->global_lock, flags);
	reg = FUNC2(he_dev, FRAMER + (addr*4));
	FUNC4(&he_dev->global_lock, flags);

	FUNC1("phy_get(addr 0x%lx) =0x%x\n", addr, reg);
	return reg;
}