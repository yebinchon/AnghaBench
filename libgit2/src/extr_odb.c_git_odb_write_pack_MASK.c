#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct git_odb_writepack {int dummy; } ;
struct TYPE_9__ {int (* writepack ) (struct git_odb_writepack**,TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ,void*) ;} ;
typedef  TYPE_1__ git_odb_backend ;
struct TYPE_12__ {size_t length; } ;
struct TYPE_10__ {TYPE_7__ backends; } ;
typedef  TYPE_2__ git_odb ;
typedef  int /*<<< orphan*/  git_indexer_progress_cb ;
struct TYPE_11__ {scalar_t__ is_alternate; TYPE_1__* backend; } ;
typedef  TYPE_3__ backend_internal ;

/* Variables and functions */
 int GIT_ERROR ; 
 int GIT_PASSTHROUGH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*) ; 
 TYPE_3__* FUNC2 (TYPE_7__*,size_t) ; 
 int FUNC3 (struct git_odb_writepack**,TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ,void*) ; 

int FUNC4(struct git_odb_writepack **out, git_odb *db, git_indexer_progress_cb progress_cb, void *progress_payload)
{
	size_t i, writes = 0;
	int error = GIT_ERROR;

	FUNC0(out && db);

	for (i = 0; i < db->backends.length && error < 0; ++i) {
		backend_internal *internal = FUNC2(&db->backends, i);
		git_odb_backend *b = internal->backend;

		/* we don't write in alternates! */
		if (internal->is_alternate)
			continue;

		if (b->writepack != NULL) {
			++writes;
			error = b->writepack(out, b, db, progress_cb, progress_payload);
		}
	}

	if (error == GIT_PASSTHROUGH)
		error = 0;
	if (error < 0 && !writes)
		error = FUNC1("write pack");

	return error;
}