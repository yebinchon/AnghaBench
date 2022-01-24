#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_6__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 char* GIT_NOTES_DEFAULT_REF ; 
 int /*<<< orphan*/  _cfg ; 
 int /*<<< orphan*/  _note ; 
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  _sig ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char*,char*) ; 

void FUNC16(void)
{
	git_oid oid, note_oid;
	git_buf default_ref = GIT_BUF_INIT;

	FUNC2(FUNC15(&_sig, "alice", "alice@example.com"));
	FUNC2(FUNC13(&oid, "8496071c1b46c854b31185ea97743be6a8774479"));

	FUNC2(FUNC14(&_cfg, _repo));

	FUNC2(FUNC6(_cfg, "core.notesRef", "refs/notes/mydefaultnotesref"));

	FUNC2(FUNC7(&note_oid, _repo, NULL, _sig, _sig, &oid, "test123test\n", 0));

	FUNC2(FUNC12(&_note, _repo, NULL, &oid));
	FUNC1("test123test\n", FUNC11(_note));
	FUNC0(FUNC10(_note), &note_oid);

	FUNC9(_note);

	FUNC2(FUNC12(&_note, _repo, "refs/notes/mydefaultnotesref", &oid));
	FUNC1("test123test\n", FUNC11(_note));
	FUNC0(FUNC10(_note), &note_oid);

	FUNC2(FUNC8(&default_ref, _repo));
	FUNC1("refs/notes/mydefaultnotesref", default_ref.ptr);
	FUNC3(&default_ref);

	FUNC2(FUNC5(_cfg, "core.notesRef"));

	FUNC2(FUNC8(&default_ref, _repo));
	FUNC1(GIT_NOTES_DEFAULT_REF, default_ref.ptr);

	FUNC4(&default_ref);
}