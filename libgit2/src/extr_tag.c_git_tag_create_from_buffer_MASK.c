#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tag ;
struct TYPE_13__ {scalar_t__ type; int /*<<< orphan*/  message; int /*<<< orphan*/  tag_name; int /*<<< orphan*/  tagger; int /*<<< orphan*/  target; } ;
typedef  TYPE_2__ git_tag ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_odb_stream ;
struct TYPE_12__ {scalar_t__ type; } ;
struct TYPE_14__ {TYPE_1__ cached; } ;
typedef  TYPE_3__ git_odb_object ;
typedef  int /*<<< orphan*/  git_odb ;
struct TYPE_15__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_4__ git_buf ;

/* Variables and functions */
 TYPE_4__ GIT_BUF_INIT ; 
 int GIT_EEXISTS ; 
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_ERROR_TAG ; 
 int /*<<< orphan*/  GIT_OBJECT_TAG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_3__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,char const*,int) ; 
 int FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int FUNC15 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC16 (char const*) ; 
 scalar_t__ FUNC17 (TYPE_2__*,char const*,char const*) ; 

int FUNC18(git_oid *oid, git_repository *repo, const char *buffer, int allow_ref_overwrite)
{
	git_tag tag;
	int error;
	git_odb *odb;
	git_odb_stream *stream;
	git_odb_object *target_obj;

	git_reference *new_ref = NULL;
	git_buf ref_name = GIT_BUF_INIT;

	FUNC0(oid && buffer);

	FUNC14(&tag, 0, sizeof(tag));

	if (FUNC12(&odb, repo) < 0)
		return -1;

	/* validate the buffer */
	if (FUNC17(&tag, buffer, buffer + FUNC16(buffer)) < 0)
		return -1;

	/* validate the target */
	if (FUNC6(&target_obj, odb, &tag.target) < 0)
		goto on_error;

	if (tag.type != target_obj->cached.type) {
		FUNC3(GIT_ERROR_TAG, "the type for the given target is invalid");
		goto on_error;
	}

	error = FUNC15(oid, &ref_name, repo, tag.tag_name);
	if (error < 0 && error != GIT_ENOTFOUND)
		goto on_error;

	/* We don't need these objects after this */
	FUNC13(tag.tagger);
	FUNC1(tag.tag_name);
	FUNC1(tag.message);
	FUNC4(target_obj);

	/** Ensure the tag name doesn't conflict with an already existing
	 *	reference unless overwriting has explicitly been requested **/
	if (error == 0 && !allow_ref_overwrite) {
		FUNC3(GIT_ERROR_TAG, "tag already exists");
		return GIT_EEXISTS;
	}

	/* write the buffer */
	if ((error = FUNC5(
			&stream, odb, FUNC16(buffer), GIT_OBJECT_TAG)) < 0)
		return error;

	if (!(error = FUNC9(stream, buffer, FUNC16(buffer))))
		error = FUNC7(oid, stream);

	FUNC8(stream);

	if (error < 0) {
		FUNC2(&ref_name);
		return error;
	}

	error = FUNC10(
		&new_ref, repo, ref_name.ptr, oid, allow_ref_overwrite, NULL);

	FUNC11(new_ref);
	FUNC2(&ref_name);

	return error;

on_error:
	FUNC13(tag.tagger);
	FUNC1(tag.tag_name);
	FUNC1(tag.message);
	FUNC4(target_obj);
	return -1;
}