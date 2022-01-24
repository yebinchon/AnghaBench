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
struct ref {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  RESOLVE_REF_READING ; 
 struct strbuf STRBUF_INIT ; 
 char* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char const*) ; 
 char* FUNC3 (struct strbuf*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static char *FUNC4(const char *name, struct ref *peer)
{
	struct strbuf buf = STRBUF_INIT;

	const char *r = FUNC0(peer->name, RESOLVE_REF_READING,
					   NULL, NULL);
	if (!r)
		return NULL;

	if (FUNC1(r, "refs/heads/")) {
		FUNC2(&buf, "refs/heads/");
	} else if (FUNC1(r, "refs/tags/")) {
		FUNC2(&buf, "refs/tags/");
	} else {
		return NULL;
	}

	FUNC2(&buf, name);
	return FUNC3(&buf, NULL);
}