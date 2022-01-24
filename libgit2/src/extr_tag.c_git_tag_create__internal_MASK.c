#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_signature ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object ;
struct TYPE_5__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int GIT_EEXISTS ; 
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_ERROR_INVALID ; 
 int /*<<< orphan*/  GIT_ERROR_TAG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,char const*) ; 

__attribute__((used)) static int FUNC10(
		git_oid *oid,
		git_repository *repo,
		const char *tag_name,
		const git_object *target,
		const git_signature *tagger,
		const char *message,
		int allow_ref_overwrite,
		int create_tag_annotation)
{
	git_reference *new_ref = NULL;
	git_buf ref_name = GIT_BUF_INIT;

	int error;

	FUNC0(repo && tag_name && target);
	FUNC0(!create_tag_annotation || (tagger && message));

	if (FUNC4(target) != repo) {
		FUNC2(GIT_ERROR_INVALID, "the given target does not belong to this repository");
		return -1;
	}

	error = FUNC8(oid, &ref_name, repo, tag_name);
	if (error < 0 && error != GIT_ENOTFOUND)
		goto cleanup;

	/** Ensure the tag name doesn't conflict with an already existing
	 *	reference unless overwriting has explicitly been requested **/
	if (error == 0 && !allow_ref_overwrite) {
		FUNC1(&ref_name);
		FUNC2(GIT_ERROR_TAG, "tag already exists");
		return GIT_EEXISTS;
	}

	if (create_tag_annotation) {
		if (FUNC9(oid, repo, tag_name, target, tagger, message) < 0)
			return -1;
	} else
		FUNC5(oid, FUNC3(target));

	error = FUNC6(&new_ref, repo, ref_name.ptr, oid, allow_ref_overwrite, NULL);

cleanup:
	FUNC7(new_ref);
	FUNC1(&ref_name);
	return error;
}