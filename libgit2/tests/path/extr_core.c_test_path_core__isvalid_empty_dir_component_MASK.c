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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(void)
{
	FUNC0(false, FUNC1(NULL, "foo//bar", 0, 0));

	/* leading slash */
	FUNC0(false, FUNC1(NULL, "/", 0, 0));
	FUNC0(false, FUNC1(NULL, "/foo", 0, 0));
	FUNC0(false, FUNC1(NULL, "/foo/bar", 0, 0));

	/* trailing slash */
	FUNC0(false, FUNC1(NULL, "foo/", 0, 0));
	FUNC0(false, FUNC1(NULL, "foo/bar/", 0, 0));
}