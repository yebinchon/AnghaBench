#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ino_t ;
struct TYPE_11__ {TYPE_2__* odb; } ;
typedef  TYPE_1__ git_odb_backend ;
struct TYPE_12__ {int /*<<< orphan*/  backends; } ;
typedef  TYPE_2__ git_odb ;
struct TYPE_13__ {int priority; int is_alternate; TYPE_1__* backend; int /*<<< orphan*/  disk_inode; } ;
typedef  TYPE_3__ backend_internal ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  GIT_ODB_BACKEND_VERSION ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 TYPE_3__* FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(
	git_odb *odb, git_odb_backend *backend,
	int priority, bool is_alternate, ino_t disk_inode)
{
	backend_internal *internal;

	FUNC2(odb && backend);

	FUNC1(backend, GIT_ODB_BACKEND_VERSION, "git_odb_backend");

	/* Check if the backend is already owned by another ODB */
	FUNC2(!backend->odb || backend->odb == odb);

	internal = FUNC4(sizeof(backend_internal));
	FUNC0(internal);

	internal->backend = backend;
	internal->priority = priority;
	internal->is_alternate = is_alternate;
	internal->disk_inode = disk_inode;

	if (FUNC5(&odb->backends, internal) < 0) {
		FUNC3(internal);
		return -1;
	}

	FUNC6(&odb->backends);
	internal->backend->odb = odb;
	return 0;
}