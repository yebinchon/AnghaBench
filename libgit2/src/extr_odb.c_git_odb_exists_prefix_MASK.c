#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_14__ {TYPE_1__ member_0; } ;
typedef  TYPE_2__ const git_oid ;
typedef  int /*<<< orphan*/  git_odb ;

/* Variables and functions */
 int GIT_ENOTFOUND ; 
 size_t GIT_OID_HEXSZ ; 
 size_t GIT_OID_MINPREFIXLEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*) ; 
 int FUNC2 (char*,TYPE_2__ const*,size_t) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__ const*,TYPE_2__ const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__ const*,TYPE_2__ const*) ; 
 int FUNC7 (TYPE_2__ const*,int /*<<< orphan*/ *,TYPE_2__ const*,size_t,int) ; 

int FUNC8(
	git_oid *out, git_odb *db, const git_oid *short_id, size_t len)
{
	int error;
	git_oid key = {{0}};

	FUNC0(db && short_id);

	if (len < GIT_OID_MINPREFIXLEN)
		return FUNC1("prefix length too short");

	if (len >= GIT_OID_HEXSZ) {
		if (FUNC3(db, short_id)) {
			if (out)
				FUNC6(out, short_id);
			return 0;
		} else {
			return FUNC2(
				"no match for id prefix", short_id, len);
		}
	}

	FUNC5(&key, short_id, len);

	error = FUNC7(out, db, &key, len, false);

	if (error == GIT_ENOTFOUND && !FUNC4(db))
		error = FUNC7(out, db, &key, len, true);

	if (error == GIT_ENOTFOUND)
		return FUNC2("no match for id prefix", &key, len);

	return error;
}