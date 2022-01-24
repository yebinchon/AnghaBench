#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint32_t ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_odb ;
struct TYPE_18__ {int /*<<< orphan*/  repo; } ;
typedef  TYPE_1__ git_merge_driver_source ;
struct TYPE_19__ {int (* apply ) (TYPE_2__*,char const**,void**,TYPE_5__*,char const*,TYPE_1__*) ;} ;
typedef  TYPE_2__ git_merge_driver ;
struct TYPE_20__ {int /*<<< orphan*/  pool; } ;
typedef  TYPE_3__ git_merge_diff_list ;
struct TYPE_21__ {struct TYPE_21__* path; void* file_size; void* mode; int /*<<< orphan*/  id; } ;
typedef  TYPE_4__ git_index_entry ;
struct TYPE_22__ {scalar_t__ size; int /*<<< orphan*/  ptr; } ;
typedef  TYPE_5__ git_buf ;

/* Variables and functions */
 TYPE_5__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  GIT_OBJECT_BLOB ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC5 (int /*<<< orphan*/ *,int) ; 
 TYPE_4__* FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_2__*,char const**,void**,TYPE_5__*,char const*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC9(
	git_index_entry **out,
	const char *name,
	git_merge_driver *driver,
	git_merge_diff_list *diff_list,
	git_merge_driver_source *src)
{
	git_index_entry *result;
	git_buf buf = GIT_BUF_INIT;
	const char *path;
	uint32_t mode;
	git_odb *odb = NULL;
	git_oid oid;
	int error;

	*out = NULL;

	if ((error = driver->apply(driver, &path, &mode, &buf, name, src)) < 0 ||
		(error = FUNC7(&odb, src->repo)) < 0 ||
		(error = FUNC3(&oid, odb, buf.ptr, buf.size, GIT_OBJECT_BLOB)) < 0)
		goto done;

	result = FUNC5(&diff_list->pool, sizeof(git_index_entry));
	FUNC0(result);

	FUNC4(&result->id, &oid);
	result->mode = mode;
	result->file_size = (uint32_t)buf.size;

	result->path = FUNC6(&diff_list->pool, path);
	FUNC0(result->path);

	*out = result;

done:
	FUNC1(&buf);
	FUNC2(odb);

	return error;
}