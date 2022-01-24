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
struct atmtcp_dev_data {scalar_t__ vcc; int /*<<< orphan*/  persist; } ;
struct atm_dev {int dummy; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 struct atmtcp_dev_data* FUNC0 (struct atm_dev*) ; 
 int FUNC1 (char*,char*,...) ; 

__attribute__((used)) static int FUNC2(struct atm_dev *dev,loff_t *pos,char *page)
{
	struct atmtcp_dev_data *dev_data = FUNC0(dev);

	if (*pos) return 0;
	if (!dev_data->persist) return FUNC1(page,"ephemeral\n");
	return FUNC1(page,"persistent, %sconnected\n",
	    dev_data->vcc ? "" : "dis");
}