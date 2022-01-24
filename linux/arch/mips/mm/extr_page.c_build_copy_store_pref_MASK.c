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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  A0 ; 
 int /*<<< orphan*/  AT ; 
 int /*<<< orphan*/  Create_Dirty_Excl_D ; 
 int /*<<< orphan*/  Create_Dirty_Excl_SD ; 
 scalar_t__ R4600_V1_HIT_CACHEOP_WAR ; 
 scalar_t__ R4600_V2_HIT_CACHEOP_WAR ; 
 int /*<<< orphan*/  ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 int cache_line_size ; 
 scalar_t__ cpu_has_cache_cdex_p ; 
 scalar_t__ cpu_has_cache_cdex_s ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int half_copy_loop_size ; 
 scalar_t__ pref_bias_copy_store ; 
 int /*<<< orphan*/  pref_dst_mode ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **) ; 

__attribute__((used)) static inline void FUNC7(u32 **buf, int off)
{
	if (off & FUNC1())
		return;

	if (pref_bias_copy_store) {
		FUNC0(buf, pref_dst_mode, pref_bias_copy_store + off,
			    A0);
	} else if (cache_line_size == (half_copy_loop_size << 1)) {
		if (cpu_has_cache_cdex_s) {
			FUNC4(buf, Create_Dirty_Excl_SD, off, A0);
		} else if (cpu_has_cache_cdex_p) {
			if (R4600_V1_HIT_CACHEOP_WAR && FUNC2()) {
				FUNC6(buf);
				FUNC6(buf);
				FUNC6(buf);
				FUNC6(buf);
			}

			if (R4600_V2_HIT_CACHEOP_WAR && FUNC3())
				FUNC5(buf, ZERO, ZERO, AT);

			FUNC4(buf, Create_Dirty_Excl_D, off, A0);
		}
	}
}