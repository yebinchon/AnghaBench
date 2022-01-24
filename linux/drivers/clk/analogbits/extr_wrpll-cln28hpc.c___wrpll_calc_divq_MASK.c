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
typedef  scalar_t__ u32 ;

/* Variables and functions */
 int MAX_DIVQ_DIVISOR ; 
 int MAX_VCO_FREQ ; 
 int MIN_VCO_FREQ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,scalar_t__) ; 
 int FUNC2 (int) ; 

__attribute__((used)) static u8 FUNC3(u32 target_rate, u64 *vco_rate)
{
	u64 s;
	u8 divq = 0;

	if (!vco_rate) {
		FUNC0(1);
		goto wcd_out;
	}

	s = FUNC1(MAX_VCO_FREQ, target_rate);
	if (s <= 1) {
		divq = 1;
		*vco_rate = MAX_VCO_FREQ;
	} else if (s > MAX_DIVQ_DIVISOR) {
		divq = FUNC2(MAX_DIVQ_DIVISOR);
		*vco_rate = MIN_VCO_FREQ;
	} else {
		divq = FUNC2(s);
		*vco_rate = (u64)target_rate << divq;
	}

wcd_out:
	return divq;
}