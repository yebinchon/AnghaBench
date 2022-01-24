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
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLK_SET_RATE_PARENT ; 
 struct clk_hw* FUNC0 (int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

__attribute__((used)) static inline struct clk_hw *FUNC1(const char *name,
		const char *parent, unsigned int mult, unsigned int div)
{
	return FUNC0(NULL, name, parent,
			CLK_SET_RATE_PARENT, mult, div);
}