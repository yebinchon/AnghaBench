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
struct remote {int configured_in_repo; int /*<<< orphan*/  fetch; int /*<<< orphan*/  push; int /*<<< orphan*/  origin; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ EOF ; 
 int /*<<< orphan*/  REMOTE_REMOTES ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct remote*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*,char const**) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 scalar_t__ FUNC7 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct remote *remote)
{
	struct strbuf buf = STRBUF_INIT;
	FILE *f = FUNC2(FUNC3("remotes/%s", remote->name), "r");

	if (!f)
		return;
	remote->configured_in_repo = 1;
	remote->origin = REMOTE_REMOTES;
	while (FUNC7(&buf, f) != EOF) {
		const char *v;

		FUNC9(&buf);

		if (FUNC5(buf.buf, "URL:", &v))
			FUNC0(remote, FUNC10(FUNC6(v)));
		else if (FUNC5(buf.buf, "Push:", &v))
			FUNC4(&remote->push, FUNC6(v));
		else if (FUNC5(buf.buf, "Pull:", &v))
			FUNC4(&remote->fetch, FUNC6(v));
	}
	FUNC8(&buf);
	FUNC1(f);
}