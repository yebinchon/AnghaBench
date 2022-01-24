#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_reflog_entry ;
typedef  int /*<<< orphan*/  git_reflog ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_buf ;
struct TYPE_2__ {char const* email; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 scalar_t__ GIT_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,size_t) ; 
 TYPE_1__* FUNC15 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/  const*) ; 
 char* FUNC18 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC22 (char const*,char const*) ; 

void FUNC23(git_repository *repo, const char *reflog, size_t idx,
	const char *old_spec, const char *new_spec,
	const char *email, const char *message, const char *file, int line)
{
	git_reflog *log;
	const git_reflog_entry *entry;
	git_buf result = GIT_BUF_INIT;

	FUNC0(FUNC20(&log, repo, reflog));
	entry = FUNC14(log, idx);
	if (entry == NULL)
		FUNC1(file, line, "Reflog has no such entry", NULL, 1);

	if (old_spec) {
		git_object *obj = NULL;
		if (FUNC21(&obj, repo, old_spec) == GIT_OK) {
			if (FUNC12(FUNC10(obj), FUNC17(entry)) != 0) {
				FUNC11(&result, "\tOld OID: \"", FUNC10(obj));
				FUNC11(&result, "\" != \"", FUNC17(entry));
				FUNC8(&result, "\"\n");
			}
			FUNC9(obj);
		} else {
			git_oid *oid = FUNC2(1, sizeof(*oid));
			FUNC13(oid, old_spec);
			if (FUNC12(oid, FUNC17(entry)) != 0) {
				FUNC11(&result, "\tOld OID: \"", oid);
				FUNC11(&result, "\" != \"", FUNC17(entry));
				FUNC8(&result, "\"\n");
			}
			FUNC3(oid);
		}
	}
	if (new_spec) {
		git_object *obj = NULL;
		if (FUNC21(&obj, repo, new_spec) == GIT_OK) {
			if (FUNC12(FUNC10(obj), FUNC16(entry)) != 0) {
				FUNC11(&result, "\tNew OID: \"", FUNC10(obj));
				FUNC11(&result, "\" != \"", FUNC16(entry));
				FUNC8(&result, "\"\n");
			}
			FUNC9(obj);
		} else {
			git_oid *oid = FUNC2(1, sizeof(*oid));
			FUNC13(oid, new_spec);
			if (FUNC12(oid, FUNC16(entry)) != 0) {
				FUNC11(&result, "\tNew OID: \"", oid);
				FUNC11(&result, "\" != \"", FUNC16(entry));
				FUNC8(&result, "\"\n");
			}
			FUNC3(oid);
		}
	}

	if (email && FUNC22(email, FUNC15(entry)->email) != 0)
		FUNC7(&result, "\tEmail: \"%s\" != \"%s\"\n", email, FUNC15(entry)->email);

	if (message) {
		const char *entry_msg = FUNC18(entry);
		if (entry_msg == NULL) entry_msg = "";

		if (entry_msg && FUNC22(message, entry_msg) != 0)
			FUNC7(&result, "\tMessage: \"%s\" != \"%s\"\n", message, entry_msg);
	}
	if (FUNC6(&result) != 0)
		FUNC1(file, line, "Reflog entry mismatch", FUNC4(&result), 1);

	FUNC5(&result);
	FUNC19(log);
}