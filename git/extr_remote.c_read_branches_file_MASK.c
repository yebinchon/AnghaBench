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
struct strbuf {int /*<<< orphan*/  buf; int /*<<< orphan*/  len; } ;
struct remote {int configured_in_repo; int fetch_tags; int /*<<< orphan*/  push; int /*<<< orphan*/  fetch; int /*<<< orphan*/  name; int /*<<< orphan*/  origin; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  REMOTE_BRANCHES ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct remote*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*) ; 
 char* FUNC11 (int /*<<< orphan*/ ,char) ; 

__attribute__((used)) static void FUNC12(struct remote *remote)
{
	char *frag;
	struct strbuf buf = STRBUF_INIT;
	FILE *f = FUNC2(FUNC3("branches/%s", remote->name), "r");

	if (!f)
		return;

	FUNC7(&buf, f);
	FUNC1(f);
	FUNC10(&buf);
	if (!buf.len) {
		FUNC8(&buf);
		return;
	}

	remote->configured_in_repo = 1;
	remote->origin = REMOTE_BRANCHES;

	/*
	 * The branches file would have URL and optionally
	 * #branch specified.  The "master" (or specified) branch is
	 * fetched and stored in the local branch matching the
	 * remote name.
	 */
	frag = FUNC11(buf.buf, '#');
	if (frag)
		*(frag++) = '\0';
	else
		frag = "master";

	FUNC0(remote, FUNC6(&buf, NULL));
	FUNC5(&buf, "refs/heads/%s:refs/heads/%s",
		    frag, remote->name);
	FUNC4(&remote->fetch, buf.buf);

	/*
	 * Cogito compatible push: push current HEAD to remote #branch
	 * (master if missing)
	 */
	FUNC9(&buf);
	FUNC5(&buf, "HEAD:refs/heads/%s", frag);
	FUNC4(&remote->push, buf.buf);
	remote->fetch_tags = 1; /* always auto-follow */
	FUNC8(&buf);
}