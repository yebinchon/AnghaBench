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
typedef  int u8 ;
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct omap3_l3 {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int L3_ERROR_LOG_MULTI ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC7(struct omap3_l3 *l3,
					u64 error, int error_addr)
{
	u8 code = FUNC3(error);
	u8 initid = FUNC4(error);
	u8 multi = error & L3_ERROR_LOG_MULTI;
	u32 address = FUNC2(error_addr);

	FUNC6("%s seen by %s %s at address %x\n",
			FUNC1(code),
			FUNC5(initid),
			multi ? "Multiple Errors" : "", address);
	FUNC0(1);

	return IRQ_HANDLED;
}