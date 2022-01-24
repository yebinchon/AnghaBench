#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_9__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  ptr; } ;
struct TYPE_11__ {scalar_t__ src; size_t idx; int /*<<< orphan*/  blob; TYPE_4__* file; int /*<<< orphan*/  repo; int /*<<< orphan*/ * odb_obj; TYPE_9__ data; } ;
typedef  TYPE_2__ similarity_info ;
typedef  int /*<<< orphan*/  git_object ;
struct TYPE_12__ {TYPE_1__* metric; } ;
typedef  TYPE_3__ git_diff_find_options ;
struct TYPE_13__ {scalar_t__ size; int /*<<< orphan*/  id; int /*<<< orphan*/  path; } ;
typedef  TYPE_4__ git_diff_file ;
struct TYPE_10__ {int (* file_signature ) (void**,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int (* buffer_signature ) (void**,TYPE_4__*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ;int /*<<< orphan*/  payload; } ;

/* Variables and functions */
 scalar_t__ GIT_ITERATOR_TYPE_WORKDIR ; 
 int /*<<< orphan*/  GIT_OBJECT_BLOB ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_9__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (void**,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (void**,TYPE_4__*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(
	similarity_info *info,
	const git_diff_find_options *opts,
	void **cache)
{
	int error = 0;
	git_diff_file *file = info->file;

	if (info->src == GIT_ITERATOR_TYPE_WORKDIR) {
		if ((error = FUNC4(
			&info->data, FUNC8(info->repo), file->path)) < 0)
			return error;

		/* if path is not a regular file, just skip this item */
		if (!FUNC7(info->data.ptr))
			return 0;

		/* TODO: apply wd-to-odb filters to file data if necessary */

		error = opts->metric->file_signature(
			&cache[info->idx], info->file,
			info->data.ptr, opts->metric->payload);
	} else {
		/* if we didn't initially know the size, we might have an odb_obj
		 * around from earlier, so convert that, otherwise load the blob now
		 */
		if (info->odb_obj != NULL)
			error = FUNC6(
				(git_object **)&info->blob, info->repo,
				info->odb_obj, GIT_OBJECT_BLOB);
		else
			error = FUNC1(&info->blob, info->repo, &file->id);

		if (error < 0) {
			/* if lookup fails, just skip this item in similarity calc */
			FUNC5();
		} else {
			size_t sz;

			/* index size may not be actual blob size if filtered */
			if (file->size != FUNC3(info->blob))
				file->size = FUNC3(info->blob);

			sz = (size_t)(FUNC0(file->size) ? file->size : -1);

			error = opts->metric->buffer_signature(
				&cache[info->idx], info->file,
				FUNC2(info->blob), sz, opts->metric->payload);
		}
	}

	return error;
}