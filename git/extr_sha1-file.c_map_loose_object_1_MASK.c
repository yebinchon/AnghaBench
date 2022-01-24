#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct stat {int /*<<< orphan*/  st_size; } ;
struct repository {int dummy; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAP_PRIVATE ; 
 int /*<<< orphan*/  PROT_READ ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int,struct stat*) ; 
 int FUNC4 (char const*) ; 
 int FUNC5 (struct repository*,struct object_id const*,char const**) ; 
 void* FUNC6 (int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 unsigned long FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC8(struct repository *r, const char *path,
			     const struct object_id *oid, unsigned long *size)
{
	void *map;
	int fd;

	if (path)
		fd = FUNC4(path);
	else
		fd = FUNC5(r, oid, &path);
	map = NULL;
	if (fd >= 0) {
		struct stat st;

		if (!FUNC3(fd, &st)) {
			*size = FUNC7(st.st_size);
			if (!*size) {
				/* mmap() is forbidden on empty files */
				FUNC2(FUNC0("object file %s is empty"), path);
				FUNC1(fd);
				return NULL;
			}
			map = FUNC6(NULL, *size, PROT_READ, MAP_PRIVATE, fd, 0);
		}
		FUNC1(fd);
	}
	return map;
}