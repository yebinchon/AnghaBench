#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_11__ {TYPE_1__ member_0; } ;
typedef  TYPE_2__ git_oid ;
struct TYPE_12__ {TYPE_5__* index; int /*<<< orphan*/  file; int /*<<< orphan*/  should_write; } ;
typedef  TYPE_3__ git_indexwriter ;
struct TYPE_13__ {int on_disk; int /*<<< orphan*/  checksum; scalar_t__ dirty; int /*<<< orphan*/  index_file_path; int /*<<< orphan*/  stamp; int /*<<< orphan*/  reuc; int /*<<< orphan*/  entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_2__*,TYPE_5__*,int /*<<< orphan*/ *) ; 

int FUNC8(git_indexwriter *writer)
{
	int error;
	git_oid checksum = {{ 0 }};

	if (!writer->should_write)
		return 0;

	FUNC6(&writer->index->entries);
	FUNC6(&writer->index->reuc);

	if ((error = FUNC7(&checksum, writer->index, &writer->file)) < 0) {
		FUNC4(writer);
		return error;
	}

	if ((error = FUNC1(&writer->file)) < 0)
		return error;

	if ((error = FUNC2(
		&writer->index->stamp, writer->index->index_file_path)) < 0) {
		FUNC0(GIT_ERROR_OS, "could not read index timestamp");
		return -1;
	}

	writer->index->dirty = 0;
	writer->index->on_disk = 1;
	FUNC5(&writer->index->checksum, &checksum);

	FUNC3(writer->index);
	writer->index = NULL;

	return 0;
}