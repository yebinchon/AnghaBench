#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int should_write; int /*<<< orphan*/  file; TYPE_2__* index; } ;
typedef  TYPE_1__ git_indexwriter ;
struct TYPE_7__ {int /*<<< orphan*/  index_file_path; } ;
typedef  TYPE_2__ git_index ;

/* Variables and functions */
 int GIT_ELOCKED ; 
 int /*<<< orphan*/  GIT_ERROR_INDEX ; 
 int /*<<< orphan*/  GIT_FILEBUF_HASH_CONTENTS ; 
 int /*<<< orphan*/  GIT_INDEX_FILE_MODE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(
	git_indexwriter *writer,
	git_index *index)
{
	int error;

	FUNC0(index);

	writer->index = index;

	if (!index->index_file_path)
		return FUNC1(-1,
			"failed to write index: The index is in-memory only");

	if ((error = FUNC3(
		&writer->file, index->index_file_path, GIT_FILEBUF_HASH_CONTENTS, GIT_INDEX_FILE_MODE)) < 0) {

		if (error == GIT_ELOCKED)
			FUNC2(GIT_ERROR_INDEX, "the index is locked; this might be due to a concurrent or crashed process");

		return error;
	}

	writer->should_write = 1;

	return 0;
}