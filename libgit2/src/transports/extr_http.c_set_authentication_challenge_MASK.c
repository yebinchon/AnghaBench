#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_2__* auth_context; int /*<<< orphan*/  auth_challenges; } ;
typedef  TYPE_1__ http_server ;
struct TYPE_5__ {int (* set_challenge ) (TYPE_2__*,char const*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_NET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_2__*,char const*) ; 

__attribute__((used)) static int FUNC4(http_server *server)
{
	const char *challenge;

	if (FUNC2(&server->auth_challenges) > 1) {
		FUNC0(GIT_ERROR_NET, "received multiple authentication challenges");
		return -1;
	}

	challenge = FUNC1(&server->auth_challenges, 0);

	if (server->auth_context->set_challenge)
		return server->auth_context->set_challenge(server->auth_context, challenge);
	else
		return 0;
}