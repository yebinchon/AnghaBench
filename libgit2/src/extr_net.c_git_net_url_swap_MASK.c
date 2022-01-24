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
typedef  int /*<<< orphan*/  git_net_url ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_NET_URL_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

void FUNC1(git_net_url *a, git_net_url *b)
{
	git_net_url tmp = GIT_NET_URL_INIT;

	FUNC0(&tmp, a, sizeof(git_net_url));
	FUNC0(a, b, sizeof(git_net_url));
	FUNC0(b, &tmp, sizeof(git_net_url));
}