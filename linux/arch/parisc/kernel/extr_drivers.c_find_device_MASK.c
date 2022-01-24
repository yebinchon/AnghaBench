#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ start; } ;
struct parisc_device {TYPE_1__ hpa; } ;
struct find_data {scalar_t__ hpa; struct parisc_device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct device*) ; 
 struct parisc_device* FUNC1 (struct device*) ; 

__attribute__((used)) static int FUNC2(struct device * dev, void * data)
{
	struct parisc_device * pdev = FUNC1(dev);
	struct find_data * d = (struct find_data*)data;

	if (FUNC0(dev)) {
		if (pdev->hpa.start == d->hpa) {
			d->dev = pdev;
			return 1;
		}
	}
	return 0;
}