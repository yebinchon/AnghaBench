#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object ;
struct TYPE_4__ {int /*<<< orphan*/  checkout_strategy; } ;
typedef  TYPE_1__ git_checkout_options ;

/* Variables and functions */
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_CHECKOUT_SAFE ; 
 int /*<<< orphan*/  GIT_OBJECT_COMMIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/  const*) ; 
 int FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*) ; 
 int FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 char* FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC11(git_repository *repo, const git_oid *target_oid, int is_unborn)
{
	git_checkout_options ff_checkout_options = GIT_CHECKOUT_OPTIONS_INIT;
	git_reference *target_ref;
	git_reference *new_target_ref;
	git_object *target = NULL;
	int err = 0;

	if (is_unborn) {
		const char *symbolic_ref;
		git_reference *head_ref;

		/* HEAD reference is unborn, lookup manually so we don't try to resolve it */
		err = FUNC7(&head_ref, repo, "HEAD");
		if (err != 0) {
			FUNC0(stderr, "failed to lookup HEAD ref\n");
			return -1;
		}

		/* Grab the reference HEAD should be pointing to */
		symbolic_ref = FUNC9(head_ref);

		/* Create our master reference on the target OID */
		err = FUNC5(&target_ref, repo, symbolic_ref, target_oid, 0, NULL);
		if (err != 0) {
			FUNC0(stderr, "failed to create master reference\n");
			return -1;
		}

		FUNC6(head_ref);
	} else {
		/* HEAD exists, just lookup and resolve */
		err = FUNC10(&target_ref, repo);
		if (err != 0) {
			FUNC0(stderr, "failed to get HEAD reference\n");
			return -1;
		}
	}

	/* Lookup the target object */
	err = FUNC3(&target, repo, target_oid, GIT_OBJECT_COMMIT);
	if (err != 0) {
		FUNC0(stderr, "failed to lookup OID %s\n", FUNC4(target_oid));
		return -1;
	}

	/* Checkout the result so the workdir is in the expected state */
	ff_checkout_options.checkout_strategy = GIT_CHECKOUT_SAFE;
	err = FUNC1(repo, target, &ff_checkout_options);
	if (err != 0) {
		FUNC0(stderr, "failed to checkout HEAD reference\n");
		return -1;
	}

	/* Move the target reference to the target OID */
	err = FUNC8(&new_target_ref, target_ref, target_oid, NULL);
	if (err != 0) {
		FUNC0(stderr, "failed to move HEAD reference\n");
		return -1;
	}

	FUNC6(target_ref);
	FUNC6(new_target_ref);
	FUNC2(target);

	return 0;
}