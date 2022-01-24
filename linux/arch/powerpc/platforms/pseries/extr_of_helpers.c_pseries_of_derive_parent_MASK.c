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
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct device_node* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 char* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char const*,int,int /*<<< orphan*/ ) ; 
 struct device_node* FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 

struct device_node *FUNC6(const char *path)
{
	struct device_node *parent;
	char *parent_path = "/";
	const char *tail;

	/* We do not want the trailing '/' character */
	tail = FUNC1(path) - 1;

	/* reject if path is "/" */
	if (!FUNC5(path, "/"))
		return FUNC0(-EINVAL);

	if (tail > path) {
		parent_path = FUNC3(path, tail - path, GFP_KERNEL);
		if (!parent_path)
			return FUNC0(-ENOMEM);
	}
	parent = FUNC4(parent_path);
	if (FUNC5(parent_path, "/"))
		FUNC2(parent_path);
	return parent ? parent : FUNC0(-EINVAL);
}