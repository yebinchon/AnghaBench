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
struct TYPE_3__ {int /*<<< orphan*/  size; int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ mmfile_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t,char*) ; 

__attribute__((used)) static void FUNC5(mmfile_t *src, char *path, size_t len)
{
	int fd;

	FUNC4(path, len, ".merge_file_XXXXXX");
	fd = FUNC3(path);
	if (FUNC2(fd, src->ptr, src->size) < 0)
		FUNC1("unable to write temp-file");
	FUNC0(fd);
}