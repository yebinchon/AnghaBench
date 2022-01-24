#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_10__ {TYPE_1__ member_0; } ;
typedef  TYPE_2__ git_oid ;
typedef  int /*<<< orphan*/  git_odb_object ;
typedef  int /*<<< orphan*/  git_odb ;

/* Variables and functions */
 int GIT_ENOTFOUND ; 
 size_t GIT_OID_HEXSZ ; 
 size_t GIT_OID_MINPREFIXLEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,TYPE_2__ const*) ; 
 int FUNC2 (char*) ; 
 int FUNC3 (char*,TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_2__ const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,TYPE_2__*,size_t,int) ; 

int FUNC8(
	git_odb_object **out, git_odb *db, const git_oid *short_id, size_t len)
{
	git_oid key = {{0}};
	int error;

	FUNC0(out && db);

	if (len < GIT_OID_MINPREFIXLEN)
		return FUNC2("prefix length too short");

	if (len > GIT_OID_HEXSZ)
		len = GIT_OID_HEXSZ;

	if (len == GIT_OID_HEXSZ) {
		*out = FUNC1(FUNC6(db), short_id);
		if (*out != NULL)
			return 0;
	}

	FUNC5(&key, short_id, len);

	error = FUNC7(out, db, &key, len, false);

	if (error == GIT_ENOTFOUND && !FUNC4(db))
		error = FUNC7(out, db, &key, len, true);

	if (error == GIT_ENOTFOUND)
		return FUNC3("no match for prefix", &key, len);

	return error;
}