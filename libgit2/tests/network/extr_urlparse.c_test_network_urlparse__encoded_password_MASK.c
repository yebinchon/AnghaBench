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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__ conndata ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 

void FUNC5(void)
{
	FUNC2(FUNC4(&conndata,
				"https://user:pass%2fis%40bad@hostname.com:1234/"));
	FUNC1(conndata.scheme, "https");
	FUNC1(conndata.host, "hostname.com");
	FUNC1(conndata.port, "1234");
	FUNC1(conndata.path, "/");
	FUNC1(conndata.username, "user");
	FUNC1(conndata.password, "pass/is@bad");
	FUNC0(FUNC3(&conndata), 0);
}