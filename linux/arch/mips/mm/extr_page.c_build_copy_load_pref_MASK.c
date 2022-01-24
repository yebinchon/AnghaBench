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
 int /*<<< orphan*/  A1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 scalar_t__ pref_bias_copy_load ; 
 int /*<<< orphan*/  pref_src_mode ; 

__attribute__((used)) static inline void FUNC2(u32 **buf, int off)
{
	if (off & FUNC1())
		return;

	if (pref_bias_copy_load)
		FUNC0(buf, pref_src_mode, pref_bias_copy_load + off, A1);
}