#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int last_error; } ;
typedef  TYPE_1__ git_filebuf ;

/* Variables and functions */
#define  BUFERR_MEM 130 
#define  BUFERR_WRITE 129 
#define  BUFERR_ZLIB 128 
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 int /*<<< orphan*/  GIT_ERROR_ZLIB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static int FUNC2(git_filebuf *file)
{
	switch (file->last_error) {
	case BUFERR_WRITE:
		FUNC0(GIT_ERROR_OS, "failed to write out file");
		return -1;

	case BUFERR_MEM:
		FUNC1();
		return -1;

	case BUFERR_ZLIB:
		FUNC0(GIT_ERROR_ZLIB,
			"Buffer error when writing out ZLib data");
		return -1;

	default:
		return 0;
	}
}