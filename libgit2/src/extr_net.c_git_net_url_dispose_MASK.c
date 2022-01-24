#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * password; int /*<<< orphan*/ * username; int /*<<< orphan*/ * path; int /*<<< orphan*/ * port; int /*<<< orphan*/ * host; int /*<<< orphan*/ * scheme; } ;
typedef  TYPE_1__ git_net_url ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(git_net_url *url)
{
	if (url->username)
		FUNC1(url->username, FUNC2(url->username));

	if (url->password)
		FUNC1(url->password, FUNC2(url->password));

	FUNC0(url->scheme); url->scheme = NULL;
	FUNC0(url->host); url->host = NULL;
	FUNC0(url->port); url->port = NULL;
	FUNC0(url->path); url->path = NULL;
	FUNC0(url->username); url->username = NULL;
	FUNC0(url->password); url->password = NULL;
}