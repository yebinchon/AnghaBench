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
typedef  int /*<<< orphan*/  git_filebuf ;
struct TYPE_3__ {char* ref_name; int /*<<< orphan*/  remote_url; scalar_t__ is_merge; int /*<<< orphan*/  oid; } ;
typedef  TYPE_1__ git_fetchhead_ref ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_HEAD_FILE ; 
 int GIT_OID_HEXSZ ; 
 int /*<<< orphan*/  GIT_REFS_HEADS_DIR ; 
 int /*<<< orphan*/  GIT_REFS_TAGS_DIR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(
	git_filebuf *file,
	git_fetchhead_ref *fetchhead_ref)
{
	char oid[GIT_OID_HEXSZ + 1];
	const char *type, *name;
	int head = 0;

	FUNC0(file && fetchhead_ref);

	FUNC4(oid, &fetchhead_ref->oid);
	oid[GIT_OID_HEXSZ] = '\0';

	if (FUNC1(fetchhead_ref->ref_name, GIT_REFS_HEADS_DIR) == 0) {
		type = "branch ";
		name = fetchhead_ref->ref_name + FUNC5(GIT_REFS_HEADS_DIR);
	} else if(FUNC1(fetchhead_ref->ref_name,
		GIT_REFS_TAGS_DIR) == 0) {
		type = "tag ";
		name = fetchhead_ref->ref_name + FUNC5(GIT_REFS_TAGS_DIR);
	} else if (!FUNC2(fetchhead_ref->ref_name, GIT_HEAD_FILE)) {
		head = 1;
	} else {
		type = "";
		name = fetchhead_ref->ref_name;
	}

	if (head)
		return FUNC3(file, "%s\t\t%s\n", oid, fetchhead_ref->remote_url);

	return FUNC3(file, "%s\t%s\t%s'%s' of %s\n",
		oid,
		(fetchhead_ref->is_merge) ? "" : "not-for-merge",
		type,
		name,
		fetchhead_ref->remote_url);
}