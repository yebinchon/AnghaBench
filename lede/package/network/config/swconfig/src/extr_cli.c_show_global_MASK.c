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
struct switch_val {int dummy; } ;
struct switch_dev {int /*<<< orphan*/  ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct switch_dev*,int /*<<< orphan*/ ,struct switch_val*) ; 

__attribute__((used)) static void
FUNC2(struct switch_dev *dev)
{
	struct switch_val val;

	FUNC0("Global attributes:\n");
	FUNC1(dev, dev->ops, &val);
}