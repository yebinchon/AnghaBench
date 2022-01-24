#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_off_t ;
struct TYPE_14__ {scalar_t__ received_bytes; int /*<<< orphan*/  declared_size; int /*<<< orphan*/ * hash_ctx; } ;
typedef  TYPE_1__ git_odb_stream ;
struct TYPE_15__ {int (* writestream ) (TYPE_1__**,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/ * write; } ;
typedef  TYPE_2__ git_odb_backend ;
struct TYPE_13__ {size_t length; } ;
struct TYPE_16__ {TYPE_10__ backends; } ;
typedef  TYPE_3__ git_odb ;
typedef  int /*<<< orphan*/  git_object_t ;
typedef  int /*<<< orphan*/  git_hash_ctx ;
struct TYPE_17__ {scalar_t__ is_alternate; TYPE_2__* backend; } ;
typedef  TYPE_4__ backend_internal ;

/* Variables and functions */
 int GIT_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int GIT_PASSTHROUGH ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char*) ; 
 TYPE_4__* FUNC6 (TYPE_10__*,size_t) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_1__**,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_1__**,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC10(
	git_odb_stream **stream, git_odb *db, git_off_t size, git_object_t type)
{
	size_t i, writes = 0;
	int error = GIT_ERROR;
	git_hash_ctx *ctx = NULL;

	FUNC1(stream && db);

	for (i = 0; i < db->backends.length && error < 0; ++i) {
		backend_internal *internal = FUNC6(&db->backends, i);
		git_odb_backend *b = internal->backend;

		/* we don't write in alternates! */
		if (internal->is_alternate)
			continue;

		if (b->writestream != NULL) {
			++writes;
			error = b->writestream(stream, b, size, type);
		} else if (b->write != NULL) {
			++writes;
			error = FUNC8(stream, b, size, type);
		}
	}

	if (error < 0) {
		if (error == GIT_PASSTHROUGH)
			error = 0;
		else if (!writes)
			error = FUNC5("write object");

		goto done;
	}

	ctx = FUNC3(sizeof(git_hash_ctx));
	FUNC0(ctx);

	if ((error = FUNC4(ctx)) < 0 ||
		(error = FUNC7(ctx, size, type)) < 0)
		goto done;

	(*stream)->hash_ctx = ctx;
	(*stream)->declared_size = size;
	(*stream)->received_bytes = 0;

done:
	if (error)
		FUNC2(ctx);
	return error;
}