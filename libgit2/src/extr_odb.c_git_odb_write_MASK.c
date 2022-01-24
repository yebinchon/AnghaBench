#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_9__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_15__ {int (* finalize_write ) (TYPE_1__*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* write ) (TYPE_1__*,void const*,size_t) ;} ;
typedef  TYPE_1__ git_odb_stream ;
struct TYPE_16__ {int (* write ) (TYPE_2__*,int /*<<< orphan*/ *,void const*,size_t,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_2__ git_odb_backend ;
struct TYPE_19__ {size_t length; } ;
struct TYPE_17__ {TYPE_9__ backends; } ;
typedef  TYPE_3__ git_odb ;
typedef  int /*<<< orphan*/  git_object_t ;
struct TYPE_18__ {scalar_t__ is_alternate; TYPE_2__* backend; } ;
typedef  TYPE_4__ backend_internal ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_EINVALID ; 
 int GIT_ERROR ; 
 int GIT_PASSTHROUGH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void const*,size_t,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__**,TYPE_3__*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC7 (TYPE_9__*,size_t) ; 
 int FUNC8 (TYPE_2__*,int /*<<< orphan*/ *,void const*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,void const*,size_t) ; 
 int FUNC10 (TYPE_1__*,int /*<<< orphan*/ *) ; 

int FUNC11(
	git_oid *oid, git_odb *db, const void *data, size_t len, git_object_t type)
{
	size_t i;
	int error = GIT_ERROR;
	git_odb_stream *stream;

	FUNC0(oid && db);

	FUNC3(oid, data, len, type);

	if (FUNC6(oid))
		return FUNC1(GIT_EINVALID, "cannot write object");

	if (FUNC2(db, oid))
		return 0;

	for (i = 0; i < db->backends.length && error < 0; ++i) {
		backend_internal *internal = FUNC7(&db->backends, i);
		git_odb_backend *b = internal->backend;

		/* we don't write in alternates! */
		if (internal->is_alternate)
			continue;

		if (b->write != NULL)
			error = b->write(b, oid, data, len, type);
	}

	if (!error || error == GIT_PASSTHROUGH)
		return 0;

	/* if no backends were able to write the object directly, we try a
	 * streaming write to the backends; just write the whole object into the
	 * stream in one push
	 */
	if ((error = FUNC4(&stream, db, len, type)) != 0)
		return error;

	stream->write(stream, data, len);
	error = stream->finalize_write(stream, oid);
	FUNC5(stream);

	return error;
}