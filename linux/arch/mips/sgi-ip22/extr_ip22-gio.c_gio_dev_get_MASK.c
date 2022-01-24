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
struct gio_device {int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct device* FUNC0 (int /*<<< orphan*/ *) ; 
 struct gio_device* FUNC1 (struct device*) ; 

struct gio_device *FUNC2(struct gio_device *dev)
{
	struct device *tmp;

	if (!dev)
		return NULL;
	tmp = FUNC0(&dev->dev);
	if (tmp)
		return FUNC1(tmp);
	else
		return NULL;
}