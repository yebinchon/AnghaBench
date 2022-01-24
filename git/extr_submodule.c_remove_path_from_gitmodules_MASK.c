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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  null_oid ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 
 struct submodule* FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,char const*) ; 
 TYPE_1__* the_repository ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char const*) ; 

int FUNC9(const char *path)
{
	struct strbuf sect = STRBUF_INIT;
	const struct submodule *submodule;

	if (!FUNC2(GITMODULES_FILE)) /* Do nothing without .gitmodules */
		return -1;

	if (FUNC4(the_repository->index))
		FUNC1(FUNC0("Cannot change unmerged .gitmodules, resolve merge conflicts first"));

	submodule = FUNC7(the_repository, &null_oid, path);
	if (!submodule || !submodule->name) {
		FUNC8(FUNC0("Could not find section in .gitmodules where path=%s"), path);
		return -1;
	}
	FUNC5(&sect, "submodule.");
	FUNC5(&sect, submodule->name);
	if (FUNC3(GITMODULES_FILE, sect.buf, NULL) < 0) {
		/* Maybe the user already did that, don't error out here */
		FUNC8(FUNC0("Could not remove .gitmodules entry for %s"), path);
		FUNC6(&sect);
		return -1;
	}
	FUNC6(&sect);
	return 0;
}