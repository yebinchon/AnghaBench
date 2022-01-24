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
struct repository {int dummy; } ;
struct notes_cache {int /*<<< orphan*/  tree; int /*<<< orphan*/  validity; } ;

/* Variables and functions */
 int NOTES_INIT_EMPTY ; 
 int NOTES_INIT_WRITABLE ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  combine_notes_overwrite ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct notes_cache*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct repository*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

void FUNC6(struct repository *r, struct notes_cache *c,
		      const char *name, const char *validity)
{
	struct strbuf ref = STRBUF_INIT;
	int flags = NOTES_INIT_WRITABLE;

	FUNC1(c, 0, sizeof(*c));
	c->validity = FUNC5(validity);

	FUNC3(&ref, "refs/notes/%s", name);
	if (!FUNC2(r, ref.buf, validity))
		flags |= NOTES_INIT_EMPTY;
	FUNC0(&c->tree, ref.buf, combine_notes_overwrite, flags);
	FUNC4(&ref);
}