#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * free; int /*<<< orphan*/ * exists; int /*<<< orphan*/ * read_header; int /*<<< orphan*/ * write; int /*<<< orphan*/ * read; int /*<<< orphan*/  version; } ;
struct memory_packer_db {TYPE_1__ parent; int /*<<< orphan*/  objects; } ;
typedef  int /*<<< orphan*/  git_odb_backend ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct memory_packer_db*) ; 
 int /*<<< orphan*/  GIT_ODB_BACKEND_VERSION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 struct memory_packer_db* FUNC2 (int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  impl__exists ; 
 int /*<<< orphan*/  impl__free ; 
 int /*<<< orphan*/  impl__read ; 
 int /*<<< orphan*/  impl__read_header ; 
 int /*<<< orphan*/  impl__write ; 

int FUNC4(git_odb_backend **out)
{
	struct memory_packer_db *db;

	FUNC1(out);

	db = FUNC2(1, sizeof(struct memory_packer_db));
	FUNC0(db);

	if (FUNC3(&db->objects) < 0)
		return -1;

	db->parent.version = GIT_ODB_BACKEND_VERSION;
	db->parent.read = &impl__read;
	db->parent.write = &impl__write;
	db->parent.read_header = &impl__read_header;
	db->parent.exists = &impl__exists;
	db->parent.free = &impl__free;

	*out = (git_odb_backend *)db;
	return 0;
}