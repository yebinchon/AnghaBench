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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct of_device_id {scalar_t__ data; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct platform_device*,unsigned long) ; 
 struct of_device_id* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  schizo_match ; 

__attribute__((used)) static int FUNC2(struct platform_device *op)
{
	const struct of_device_id *match;

	match = FUNC1(schizo_match, &op->dev);
	if (!match)
		return -EINVAL;
	return FUNC0(op, (unsigned long)match->data);
}