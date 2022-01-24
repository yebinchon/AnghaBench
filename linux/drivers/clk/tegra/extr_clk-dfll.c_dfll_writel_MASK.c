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
typedef  scalar_t__ u32 ;
struct tegra_dfll {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ DFLL_I2C_CFG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static inline void FUNC2(struct tegra_dfll *td, u32 val, u32 offs)
{
	FUNC0(offs >= DFLL_I2C_CFG);
	FUNC1(val, td->base + offs);
}