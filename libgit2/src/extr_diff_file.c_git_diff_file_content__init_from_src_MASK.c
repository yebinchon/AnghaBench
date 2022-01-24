#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_diff_options ;
struct TYPE_11__ {size_t buflen; scalar_t__ buf; scalar_t__ blob; } ;
typedef  TYPE_2__ git_diff_file_content_src ;
struct TYPE_10__ {size_t len; char* data; } ;
struct TYPE_12__ {TYPE_1__ map; TYPE_4__* file; int /*<<< orphan*/  flags; int /*<<< orphan*/  blob; int /*<<< orphan*/ * repo; } ;
typedef  TYPE_3__ git_diff_file_content ;
struct TYPE_13__ {size_t size; void* id_abbrev; int /*<<< orphan*/  id; int /*<<< orphan*/  mode; int /*<<< orphan*/  flags; } ;
typedef  TYPE_4__ git_diff_file ;
typedef  int /*<<< orphan*/  git_blob ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_DIFF_FLAG_VALID_ID ; 
 int /*<<< orphan*/  GIT_DIFF_FLAG__FREE_BLOB ; 
 int /*<<< orphan*/  GIT_DIFF_FLAG__LOADED ; 
 int /*<<< orphan*/  GIT_DIFF_FLAG__NO_DATA ; 
 int /*<<< orphan*/  GIT_FILEMODE_BLOB ; 
 int /*<<< orphan*/  GIT_OBJECT_BLOB ; 
 void* GIT_OID_HEXSZ ; 
 int FUNC0 (TYPE_3__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 size_t FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 

int FUNC8(
	git_diff_file_content *fc,
	git_repository *repo,
	const git_diff_options *opts,
	const git_diff_file_content_src *src,
	git_diff_file *as_file)
{
	FUNC7(fc, 0, sizeof(*fc));
	fc->repo = repo;
	fc->file = as_file;

	if (!src->blob && !src->buf) {
		fc->flags |= GIT_DIFF_FLAG__NO_DATA;
	} else {
		fc->flags |= GIT_DIFF_FLAG__LOADED;
		fc->file->flags |= GIT_DIFF_FLAG_VALID_ID;
		fc->file->mode = GIT_FILEMODE_BLOB;

		if (src->blob) {
			FUNC1((git_blob **)&fc->blob, (git_blob *) src->blob);
			fc->file->size = FUNC4(src->blob);
			FUNC6(&fc->file->id, FUNC2(src->blob));
			fc->file->id_abbrev = GIT_OID_HEXSZ;

			fc->map.len  = (size_t)fc->file->size;
			fc->map.data = (char *)FUNC3(src->blob);

			fc->flags |= GIT_DIFF_FLAG__FREE_BLOB;
		} else {
			fc->file->size = src->buflen;
			FUNC5(&fc->file->id, src->buf, src->buflen, GIT_OBJECT_BLOB);
			fc->file->id_abbrev = GIT_OID_HEXSZ;

			fc->map.len  = src->buflen;
			fc->map.data = (char *)src->buf;
		}
	}

	return FUNC0(fc, opts);
}