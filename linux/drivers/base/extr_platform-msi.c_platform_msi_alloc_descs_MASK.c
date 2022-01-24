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
struct platform_msi_priv_data {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct device*,int /*<<< orphan*/ ,int,struct platform_msi_priv_data*) ; 

__attribute__((used)) static int FUNC1(struct device *dev, int nvec,
				    struct platform_msi_priv_data *data)

{
	return FUNC0(dev, 0, nvec, data);
}