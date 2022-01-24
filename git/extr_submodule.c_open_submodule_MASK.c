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
struct repository {int /*<<< orphan*/  submodule_prefix; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct repository*) ; 
 scalar_t__ FUNC1 (struct repository*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*) ; 
 scalar_t__ FUNC3 (struct strbuf*,char const*) ; 
 struct repository* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

__attribute__((used)) static struct repository *FUNC6(const char *path)
{
	struct strbuf sb = STRBUF_INIT;
	struct repository *out = FUNC4(sizeof(*out));

	if (FUNC3(&sb, path) || FUNC1(out, sb.buf, NULL)) {
		FUNC2(&sb);
		FUNC0(out);
		return NULL;
	}

	/* Mark it as a submodule */
	out->submodule_prefix = FUNC5(path);

	FUNC2(&sb);
	return out;
}