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
struct clk_si570 {unsigned long rfreq; int /*<<< orphan*/  regmap; int /*<<< orphan*/  frequency; } ;

/* Variables and functions */
 int /*<<< orphan*/  SI570_CNTRL_FREEZE_M ; 
 int /*<<< orphan*/  SI570_REG_CONTROL ; 
 unsigned long FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct clk_si570*) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(struct clk_si570 *data,
				     unsigned long frequency)
{
	/*
	 * This is a re-implementation of DIV_ROUND_CLOSEST
	 * using the div64_u64 function lieu of letting the compiler
	 * insert EABI calls
	 */
	data->rfreq = FUNC0((data->rfreq * frequency) +
			FUNC1(data->frequency, 2), data->frequency);
	FUNC2(data->regmap, SI570_REG_CONTROL, SI570_CNTRL_FREEZE_M);
	FUNC3(data);
	FUNC2(data->regmap, SI570_REG_CONTROL, 0);

	/* Applying a new frequency (small change) can take up to 100us */
	FUNC4(100, 200);

	return 0;
}