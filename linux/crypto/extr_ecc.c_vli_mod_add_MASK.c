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
typedef  scalar_t__ u64 ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__*,scalar_t__ const*,scalar_t__ const*,unsigned int) ; 
 scalar_t__ FUNC1 (scalar_t__*,scalar_t__ const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,scalar_t__*,scalar_t__ const*,unsigned int) ; 

__attribute__((used)) static void FUNC3(u64 *result, const u64 *left, const u64 *right,
			const u64 *mod, unsigned int ndigits)
{
	u64 carry;

	carry = FUNC0(result, left, right, ndigits);

	/* result > mod (result = mod + remainder), so subtract mod to
	 * get remainder.
	 */
	if (carry || FUNC1(result, mod, ndigits) >= 0)
		FUNC2(result, result, mod, ndigits);
}