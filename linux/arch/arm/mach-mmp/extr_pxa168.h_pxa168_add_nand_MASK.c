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
struct pxa3xx_nand_platform_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  pxa168_device_nand ; 
 int FUNC0 (int /*<<< orphan*/ *,struct pxa3xx_nand_platform_data*,int) ; 

__attribute__((used)) static inline int FUNC1(struct pxa3xx_nand_platform_data *info)
{
	return FUNC0(&pxa168_device_nand, info, sizeof(*info));
}