#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  password; int /*<<< orphan*/  username; int /*<<< orphan*/  path; int /*<<< orphan*/  port; int /*<<< orphan*/  host; int /*<<< orphan*/  scheme; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ conndata ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,char*) ; 

void FUNC4(void)
{
	FUNC1(FUNC2(&conndata,
				"https://user%2fname:pass%40word%zyx%v@example.com/foo/bar/baz"));
	FUNC1(FUNC3(&conndata,
				"https://user%2fname:pass%40word%zyx%v@example.com/foo/bar/baz", "bar/baz"));
	FUNC0(conndata.scheme, "https");
	FUNC0(conndata.host, "example.com");
	FUNC0(conndata.port, "443");
	FUNC0(conndata.path, "/foo/");
	FUNC0(conndata.username, "user/name");
	FUNC0(conndata.password, "pass@word%zyx%v");
}