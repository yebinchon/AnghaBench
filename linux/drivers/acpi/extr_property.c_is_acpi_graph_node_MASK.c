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
struct fwnode_handle {int dummy; } ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct fwnode_handle*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct fwnode_handle*) ; 
 unsigned int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*,unsigned int) ; 
 TYPE_1__* FUNC4 (struct fwnode_handle*) ; 

__attribute__((used)) static bool FUNC5(struct fwnode_handle *fwnode,
			       const char *str)
{
	unsigned int len = FUNC2(str);
	const char *name;

	if (!len || !FUNC1(fwnode))
		return false;

	name = FUNC4(fwnode)->name;

	return (FUNC0(fwnode, "reg") &&
		!FUNC3(name, str, len) && name[len] == '@') ||
		FUNC0(fwnode, str);
}