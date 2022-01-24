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
struct klist_node {int dummy; } ;
struct klist_iter {int dummy; } ;
struct device_private {struct device* device; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct klist_node* FUNC0 (struct klist_iter*) ; 
 struct device_private* FUNC1 (struct klist_node*) ; 

__attribute__((used)) static struct device *FUNC2(struct klist_iter *i)
{
	struct klist_node *n = FUNC0(i);
	struct device *dev = NULL;
	struct device_private *dev_prv;

	if (n) {
		dev_prv = FUNC1(n);
		dev = dev_prv->device;
	}
	return dev;
}