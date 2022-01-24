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
struct strbuf {int dummy; } ;
struct rpc_service {char const* name; scalar_t__ enabled; } ;

/* Variables and functions */
 int FUNC0 (struct rpc_service*) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char*,char const*) ; 
 char* FUNC2 (char*) ; 
 struct rpc_service* rpc_service ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char const*) ; 

__attribute__((used)) static struct rpc_service *FUNC5(struct strbuf *hdr, const char *name)
{
	const char *svc_name;
	struct rpc_service *svc = NULL;
	int i;

	if (!FUNC3(name, "git-", &svc_name))
		FUNC1(hdr, "Unsupported service: '%s'", name);

	for (i = 0; i < FUNC0(rpc_service); i++) {
		struct rpc_service *s = &rpc_service[i];
		if (!FUNC4(s->name, svc_name)) {
			svc = s;
			break;
		}
	}

	if (!svc)
		FUNC1(hdr, "Unsupported service: '%s'", name);

	if (svc->enabled < 0) {
		const char *user = FUNC2("REMOTE_USER");
		svc->enabled = (user && *user) ? 1 : 0;
	}
	if (!svc->enabled)
		FUNC1(hdr, "Service not enabled: '%s'", svc->name);
	return svc;
}