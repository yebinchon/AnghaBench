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
struct device_node {int dummy; } ;

/* Variables and functions */
 struct device_node* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC1 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char const*,char const*,int /*<<< orphan*/ ) ; 

int FUNC5(const char *type)
{
	struct device_node* bk_node = FUNC0(NULL, "backlight");

	if (bk_node) {
		const char *prop = FUNC1(bk_node,
				"backlight-control", NULL);
		if (prop && FUNC4(prop, type, FUNC3(type)) == 0) {
			FUNC2(bk_node);
			return 1;
		}
		FUNC2(bk_node);
	}

	return 0;
}