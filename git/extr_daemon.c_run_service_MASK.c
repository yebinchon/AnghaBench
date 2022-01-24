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
struct strbuf {int /*<<< orphan*/  buf; } ;
struct hostinfo {int dummy; } ;
struct daemon_service {int enabled; int (* fn ) (struct argv_array const*) ;int /*<<< orphan*/  name; int /*<<< orphan*/  config_name; scalar_t__ overridable; } ;
struct argv_array {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EACCES ; 
 int /*<<< orphan*/  F_OK ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIG_IGN ; 
 struct strbuf STRBUF_INIT ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ access_hook ; 
 int FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  export_all_trees ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,char const*) ; 
 char* FUNC5 (char const*,struct hostinfo*) ; 
 scalar_t__ FUNC6 (struct daemon_service*,char const*,char const*,struct hostinfo*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*) ; 
 int FUNC10 (struct argv_array const*) ; 

__attribute__((used)) static int FUNC11(const char *dir, struct daemon_service *service,
		       struct hostinfo *hi, const struct argv_array *env)
{
	const char *path;
	int enabled = service->enabled;
	struct strbuf var = STRBUF_INIT;

	FUNC4("Request %s for '%s'", service->name, dir);

	if (!enabled && !service->overridable) {
		FUNC3("'%s': service not enabled.", service->name);
		errno = EACCES;
		return FUNC1(dir, "service not enabled");
	}

	if (!(path = FUNC5(dir, hi)))
		return FUNC1(dir, "no such repository");

	/*
	 * Security on the cheap.
	 *
	 * We want a readable HEAD, usable "objects" directory, and
	 * a "git-daemon-export-ok" flag that says that the other side
	 * is ok with us doing this.
	 *
	 * path_ok() uses enter_repo() and does whitelist checking.
	 * We only need to make sure the repository is exported.
	 */

	if (!export_all_trees && FUNC0("git-daemon-export-ok", F_OK)) {
		FUNC3("'%s': repository not exported.", path);
		errno = EACCES;
		return FUNC1(dir, "repository not exported");
	}

	if (service->overridable) {
		FUNC8(&var, "daemon.%s", service->config_name);
		FUNC2(var.buf, &enabled);
		FUNC9(&var);
	}
	if (!enabled) {
		FUNC3("'%s': service not enabled for '%s'",
			 service->name, path);
		errno = EACCES;
		return FUNC1(dir, "service not enabled");
	}

	/*
	 * Optionally, a hook can choose to deny access to the
	 * repository depending on the phase of the moon.
	 */
	if (access_hook && FUNC6(service, dir, path, hi))
		return -1;

	/*
	 * We'll ignore SIGTERM from now on, we have a
	 * good client.
	 */
	FUNC7(SIGTERM, SIG_IGN);

	return service->fn(env);
}