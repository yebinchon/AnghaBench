#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  hash; } ;
typedef  TYPE_1__ git_indexer ;
struct TYPE_11__ {char* ptr; int /*<<< orphan*/  size; } ;
typedef  TYPE_2__ git_buf ;

/* Variables and functions */
 scalar_t__ GIT_OID_HEXSZ ; 
 scalar_t__ FUNC0 (TYPE_2__*,scalar_t__) ; 
 int FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char const*) ; 

__attribute__((used)) static int FUNC7(git_buf *path, git_indexer *idx, const char *suffix)
{
	const char prefix[] = "pack-";
	size_t slash = (size_t)path->size;

	/* search backwards for '/' */
	while (slash > 0 && path->ptr[slash - 1] != '/')
		slash--;

	if (FUNC0(path, slash + 1 + FUNC6(prefix) +
					 GIT_OID_HEXSZ + FUNC6(suffix) + 1) < 0)
		return -1;

	FUNC4(path, slash);
	FUNC3(path, prefix);
	FUNC5(path->ptr + FUNC1(path), &idx->hash);
	path->size += GIT_OID_HEXSZ;
	FUNC3(path, suffix);

	return FUNC2(path) ? -1 : 0;
}