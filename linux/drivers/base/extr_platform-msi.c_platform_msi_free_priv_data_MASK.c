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
struct platform_msi_priv_data {int /*<<< orphan*/  devid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct platform_msi_priv_data*) ; 
 int /*<<< orphan*/  platform_msi_devid_ida ; 

__attribute__((used)) static void FUNC2(struct platform_msi_priv_data *data)
{
	FUNC0(&platform_msi_devid_ida, data->devid);
	FUNC1(data);
}