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
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_odb_object ;
typedef  int /*<<< orphan*/  git_odb ;

/* Variables and functions */
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_OID_HEXSZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int FUNC3 (char*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

int FUNC8(git_odb_object **out, git_odb *db, const git_oid *id)
{
	int error;

	FUNC0(out && db && id);

	if (FUNC5(id))
		return FUNC1(GIT_ENOTFOUND, "cannot read object");

	*out = FUNC2(FUNC6(db), id);
	if (*out != NULL)
		return 0;

	error = FUNC7(out, db, id, false);

	if (error == GIT_ENOTFOUND && !FUNC4(db))
		error = FUNC7(out, db, id, true);

	if (error == GIT_ENOTFOUND)
		return FUNC3("no match for id", id, GIT_OID_HEXSZ);

	return error;
}