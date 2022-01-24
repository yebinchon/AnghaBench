#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  unlock; scalar_t__ lock; int /*<<< orphan*/  reflog_delete; int /*<<< orphan*/  reflog_rename; int /*<<< orphan*/  reflog_write; int /*<<< orphan*/  reflog_read; int /*<<< orphan*/  free; int /*<<< orphan*/  ensure_log; int /*<<< orphan*/  has_log; int /*<<< orphan*/  del; int /*<<< orphan*/  rename; int /*<<< orphan*/  write; int /*<<< orphan*/  iterator; int /*<<< orphan*/  lookup; int /*<<< orphan*/  exists; } ;
typedef  TYPE_1__ git_refdb_backend ;
struct TYPE_8__ {TYPE_1__* backend; } ;
typedef  TYPE_2__ git_refdb ;

/* Variables and functions */
 int GIT_EINVALID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  GIT_ERROR_REFERENCE ; 
 int /*<<< orphan*/  GIT_REFDB_BACKEND_VERSION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

int FUNC3(git_refdb *db, git_refdb_backend *backend)
{
	FUNC0(backend, GIT_REFDB_BACKEND_VERSION, "git_refdb_backend");

	if (!backend->exists || !backend->lookup || !backend->iterator ||
	    !backend->write || !backend->rename || !backend->del ||
	    !backend->has_log || !backend->ensure_log || !backend->free ||
	    !backend->reflog_read || !backend->reflog_write ||
	    !backend->reflog_rename || !backend->reflog_delete ||
	    (backend->lock && !backend->unlock)) {
		FUNC1(GIT_ERROR_REFERENCE, "incomplete refdb backend implementation");
		return GIT_EINVALID;
	}

	FUNC2(db);
	db->backend = backend;

	return 0;
}