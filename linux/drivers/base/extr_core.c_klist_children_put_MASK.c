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
struct device_private {struct device* device; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 struct device_private* FUNC1 (struct klist_node*) ; 

__attribute__((used)) static void FUNC2(struct klist_node *n)
{
	struct device_private *p = FUNC1(n);
	struct device *dev = p->device;

	FUNC0(dev);
}