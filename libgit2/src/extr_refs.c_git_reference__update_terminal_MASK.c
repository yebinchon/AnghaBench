#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  const git_signature ;
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_7__ {char const* symbolic; int /*<<< orphan*/  oid; } ;
struct TYPE_8__ {char const* name; TYPE_1__ target; } ;
typedef  TYPE_2__ git_reference ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int GIT_ENOTFOUND ; 
 scalar_t__ GIT_REFERENCE_DIRECT ; 
 scalar_t__ GIT_REFERENCE_SYMBOLIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_2__**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/  const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 
 int FUNC7 (TYPE_2__**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC8(
	git_repository *repo,
	const char *ref_name,
	const git_oid *oid,
	const git_signature *sig,
	const char *log_message)
{
	git_reference *ref = NULL, *ref2 = NULL;
	git_signature *who = NULL;
	const git_signature *to_use;
	int error = 0;

	if (!sig && (error = FUNC3(&who, repo)) < 0)
		return error;

	to_use = sig ? sig : who;
	error = FUNC1(&ref, repo, ref_name, 0);

	/* found a dangling symref */
	if (error == GIT_ENOTFOUND && ref) {
		FUNC0(FUNC5(ref) == GIT_REFERENCE_SYMBOLIC);
		FUNC2();
		error = FUNC7(&ref2, repo, ref->target.symbolic, oid, NULL, 0, to_use,
					  log_message, NULL, NULL);
	} else if (error == GIT_ENOTFOUND) {
		FUNC2();
		error = FUNC7(&ref2, repo, ref_name, oid, NULL, 0, to_use,
					  log_message, NULL, NULL);
	}  else if (error == 0) {
		FUNC0(FUNC5(ref) == GIT_REFERENCE_DIRECT);
		error = FUNC7(&ref2, repo, ref->name, oid, NULL, 1, to_use,
					  log_message, &ref->target.oid, NULL);
	}

	FUNC4(ref2);
	FUNC4(ref);
	FUNC6(who);
	return error;
}