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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__ conndata ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 

void FUNC6(void)
{
	FUNC3(FUNC5(&conndata, "http://example.com:"));
	FUNC2(conndata.scheme, "http");
	FUNC2(conndata.host, "example.com");
	FUNC2(conndata.port, "80");
	FUNC2(conndata.path, "/");
	FUNC1(conndata.username, NULL);
	FUNC1(conndata.password, NULL);
	FUNC0(FUNC4(&conndata), 1);
}