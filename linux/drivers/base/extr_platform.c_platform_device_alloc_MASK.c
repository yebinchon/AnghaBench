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
struct TYPE_2__ {int /*<<< orphan*/  release; } ;
struct platform_device {int id; TYPE_1__ dev; int /*<<< orphan*/  name; } ;
struct platform_object {struct platform_device pdev; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 struct platform_object* FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  platform_device_release ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC4 (char const*) ; 

struct platform_device *FUNC5(const char *name, int id)
{
	struct platform_object *pa;

	pa = FUNC1(sizeof(*pa) + FUNC4(name) + 1, GFP_KERNEL);
	if (pa) {
		FUNC3(pa->name, name);
		pa->pdev.name = pa->name;
		pa->pdev.id = id;
		FUNC0(&pa->pdev.dev);
		pa->pdev.dev.release = platform_device_release;
		FUNC2(&pa->pdev);
	}

	return pa ? &pa->pdev : NULL;
}