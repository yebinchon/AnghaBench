#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ git_diff_driver ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (size_t*,size_t,int) ; 
 TYPE_1__* FUNC2 (int,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,size_t) ; 
 size_t FUNC4 (char const*) ; 

__attribute__((used)) static int FUNC5(
	git_diff_driver **out, size_t *namelen_out, const char *name)
{
	git_diff_driver *driver;
	size_t driverlen = sizeof(git_diff_driver),
		namelen = FUNC4(name),
		alloclen;

	FUNC1(&alloclen, driverlen, namelen);
	FUNC1(&alloclen, alloclen, 1);

	driver = FUNC2(1, alloclen);
	FUNC0(driver);

	FUNC3(driver->name, name, namelen);

	*out = driver;

	if (namelen_out)
		*namelen_out = namelen;

	return 0;
}