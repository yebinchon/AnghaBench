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
typedef  scalar_t__ u_char ;
typedef  int /*<<< orphan*/  FPU_REG ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ TAG_Special ; 
 scalar_t__ TAG_Valid ; 
 scalar_t__ TAG_Zero ; 
 scalar_t__ TW_Denormal ; 
 scalar_t__ TW_Infinity ; 
 scalar_t__ FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void FUNC11(FPU_REG *st0_ptr, u_char st0_tag)
{
	int flags, tag;

	if (st0_tag == TAG_Valid) {
		u_char sign;

	      denormal_arg:

		sign = FUNC6(st0_ptr);

		if (FUNC5(st0_ptr) > 63)
			return;

		if (st0_tag == TW_Denormal) {
			if (FUNC4() < 0)
				return;
		}

		/* Fortunately, this can't overflow to 2^64 */
		if ((flags = FUNC2(st0_ptr, st0_tag)))
			FUNC7(flags);

		FUNC8(st0_ptr, 63);
		tag = FUNC1(st0_ptr);
		FUNC9(st0_ptr, sign);
		FUNC3(tag);
		return;
	}

	if (st0_tag == TAG_Zero)
		return;

	if (st0_tag == TAG_Special)
		st0_tag = FUNC0(st0_ptr);

	if (st0_tag == TW_Denormal)
		goto denormal_arg;
	else if (st0_tag == TW_Infinity)
		return;
	else
		FUNC10(st0_ptr, st0_tag);
}