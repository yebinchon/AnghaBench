#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ auth_context; int /*<<< orphan*/  auth_challenges; scalar_t__ authenticated; } ;
typedef  TYPE_1__ http_server ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(http_server *server)
{
	/*
	 * If we think that we've completed authentication (ie, we've either
	 * sent a basic credential or we've sent the NTLM/Negotiate response)
	 * but we've got an authentication request from the server then our
	 * last authentication did not succeed.  Start over.
	 */
	if (server->auth_context && FUNC0(server)) {
		FUNC1(server);

		server->authenticated = 0;
	}

	/*
	 * If we've begun authentication, give the challenge to the context.
	 * Otherwise, set up the types to prepare credentials.
	 */
	if (FUNC2(&server->auth_challenges) == 0)
		return 0;
	else if (server->auth_context)
		return FUNC3(server);
	else
		return FUNC4(server);
}