#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct submodule {char* name; } ;
struct strbuf {int /*<<< orphan*/  buf; } ;
struct TYPE_3__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int /*<<< orphan*/  GITMODULES_FILE ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  null_oid ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 
 struct submodule* FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,char const*) ; 
 TYPE_1__* the_repository ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char const*) ; 

int FUNC9(const char *oldpath, const char *newpath)
{
	struct strbuf entry = STRBUF_INIT;
	const struct submodule *submodule;
	int ret;

	if (!FUNC3(GITMODULES_FILE)) /* Do nothing without .gitmodules */
		return -1;

	if (FUNC4(the_repository->index))
		FUNC2(FUNC0("Cannot change unmerged .gitmodules, resolve merge conflicts first"));

	submodule = FUNC7(the_repository, &null_oid, oldpath);
	if (!submodule || !submodule->name) {
		FUNC8(FUNC0("Could not find section in .gitmodules where path=%s"), oldpath);
		return -1;
	}
	FUNC5(&entry, "submodule.");
	FUNC5(&entry, submodule->name);
	FUNC5(&entry, ".path");
	ret = FUNC1(entry.buf, newpath);
	FUNC6(&entry);
	return ret;
}