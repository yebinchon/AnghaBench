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
struct transport {int dummy; } ;
struct remote {int /*<<< orphan*/ * url; } ;
struct ref {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRANS_OPT_FROM_PROMISOR ; 
 int /*<<< orphan*/  TRANS_OPT_NO_DEPENDENTS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int fetch_if_missing ; 
 struct remote* FUNC2 (char const*) ; 
 int FUNC3 (struct transport*,struct ref*) ; 
 struct transport* FUNC4 (struct remote*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct transport*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC6(const char *remote_name, struct ref *ref)
{
	struct remote *remote;
	struct transport *transport;
	int original_fetch_if_missing = fetch_if_missing;
	int res;

	fetch_if_missing = 0;
	remote = FUNC2(remote_name);
	if (!remote->url[0])
		FUNC1(FUNC0("Remote with no URL"));
	transport = FUNC4(remote, remote->url[0]);

	FUNC5(transport, TRANS_OPT_FROM_PROMISOR, "1");
	FUNC5(transport, TRANS_OPT_NO_DEPENDENTS, "1");
	res = FUNC3(transport, ref);
	fetch_if_missing = original_fetch_if_missing;

	return res;
}