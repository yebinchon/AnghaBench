#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  (* free ) (TYPE_1__*) ;} ;
typedef  TYPE_1__ git_transport ;

/* Variables and functions */
 unsigned int FUNC0 (char const**) ; 
 TYPE_1__ _transport ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dummy_transport ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__**,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

void FUNC9(void)
{
	const char *urls[] = {
		"ssh://somehost:somepath",
		"ssh+git://somehost:somepath",
		"git+ssh://somehost:somepath",
		"git@somehost:somepath",
		"ssh://somehost:somepath%20with%20%spaces",
		"ssh://somehost:somepath with spaces"
	};
	git_transport *transport;
	unsigned i;

	for (i = 0; i < FUNC0(urls); i++) {
#ifndef GIT_SSH
		FUNC2(FUNC4(&transport, NULL, urls[i]), -1);
#else
		cl_git_pass(git_transport_new(&transport, NULL, urls[i]));
		transport->free(transport);
#endif
	}

	FUNC3(FUNC5("ssh", dummy_transport, NULL));

	FUNC3(FUNC4(&transport, NULL, "git@somehost:somepath"));

	FUNC1(transport == &_transport);

	FUNC3(FUNC6("ssh"));

	for (i = 0; i < FUNC0(urls); i++) {
#ifndef GIT_SSH
		FUNC2(FUNC4(&transport, NULL, urls[i]), -1);
#else
		cl_git_pass(git_transport_new(&transport, NULL, urls[i]));
		transport->free(transport);
#endif
	}
}