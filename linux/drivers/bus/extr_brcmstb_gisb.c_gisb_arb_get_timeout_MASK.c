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
typedef  int u32 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct brcmstb_gisb_arb_device {int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ARB_TIMER ; 
 struct brcmstb_gisb_arb_device* FUNC0 (struct device*) ; 
 int FUNC1 (struct brcmstb_gisb_arb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
				    struct device_attribute *attr,
				    char *buf)
{
	struct brcmstb_gisb_arb_device *gdev = FUNC0(dev);
	u32 timeout;

	FUNC2(&gdev->lock);
	timeout = FUNC1(gdev, ARB_TIMER);
	FUNC3(&gdev->lock);

	return FUNC4(buf, "%d", timeout);
}