#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ssize_t ;
struct TYPE_7__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_8__ {TYPE_1__ member_0; } ;
typedef  TYPE_2__ git_oid ;
struct TYPE_9__ {int /*<<< orphan*/  checksum; int /*<<< orphan*/  index_file_path; } ;
typedef  TYPE_3__ git_index ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 int /*<<< orphan*/  GIT_OID_RAWSZ ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(git_index *index)
{
	int fd;
	ssize_t bytes_read;
	git_oid checksum = {{ 0 }};

	if ((fd = FUNC4(index->index_file_path, O_RDONLY)) < 0)
		return fd;

	if (FUNC3(fd, -20, SEEK_END) < 0) {
		FUNC2(fd);
		FUNC0(GIT_ERROR_OS, "failed to seek to end of file");
		return -1;
	}

	bytes_read = FUNC5(fd, &checksum, GIT_OID_RAWSZ);
	FUNC2(fd);

	if (bytes_read < 0)
		return -1;

	return !!FUNC1(&checksum, &index->checksum);
}