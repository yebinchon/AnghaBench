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
typedef  scalar_t__ umode_t ;
struct miscdevice {scalar_t__ nodename; scalar_t__ mode; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct miscdevice* FUNC0 (struct device*) ; 
 char* FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *FUNC2(struct device *dev, umode_t *mode)
{
	struct miscdevice *c = FUNC0(dev);

	if (mode && c->mode)
		*mode = c->mode;
	if (c->nodename)
		return FUNC1(c->nodename, GFP_KERNEL);
	return NULL;
}