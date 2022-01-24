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
struct device {int dummy; } ;
struct devcd_entry {int /*<<< orphan*/  del_wk; } ;

/* Variables and functions */
 struct devcd_entry* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct device *dev, void *data)
{
	struct devcd_entry *devcd = FUNC0(dev);

	FUNC1(&devcd->del_wk);
	return 0;
}