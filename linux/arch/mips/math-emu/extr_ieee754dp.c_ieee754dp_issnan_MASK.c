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
typedef  union ieee754dp {int dummy; } ieee754dp ;
struct TYPE_2__ {int nan2008; } ;

/* Variables and functions */
 int FUNC0 (union ieee754dp) ; 
 scalar_t__ DP_FBITS ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__ ieee754_csr ; 
 int /*<<< orphan*/  FUNC3 (union ieee754dp) ; 

__attribute__((used)) static inline int FUNC4(union ieee754dp x)
{
	int qbit;

	FUNC2(FUNC3(x));
	qbit = (FUNC0(x) & FUNC1(DP_FBITS - 1)) == FUNC1(DP_FBITS - 1);
	return ieee754_csr.nan2008 ^ qbit;
}