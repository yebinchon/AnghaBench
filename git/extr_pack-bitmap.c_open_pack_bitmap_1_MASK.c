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
struct packed_git {int /*<<< orphan*/  pack_name; } ;
struct bitmap_index {int /*<<< orphan*/  map_size; int /*<<< orphan*/ * map; scalar_t__ map_pos; struct packed_git* pack; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAP_PRIVATE ; 
 int /*<<< orphan*/  PROT_READ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int,struct stat*) ; 
 int FUNC3 (char*) ; 
 scalar_t__ FUNC4 (struct bitmap_index*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct packed_git*) ; 
 char* FUNC7 (struct packed_git*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct bitmap_index *bitmap_git, struct packed_git *packfile)
{
	int fd;
	struct stat st;
	char *idx_name;

	if (FUNC6(packfile))
		return -1;

	idx_name = FUNC7(packfile);
	fd = FUNC3(idx_name);
	FUNC1(idx_name);

	if (fd < 0)
		return -1;

	if (FUNC2(fd, &st)) {
		FUNC0(fd);
		return -1;
	}

	if (bitmap_git->pack) {
		FUNC8("ignoring extra bitmap file: %s", packfile->pack_name);
		FUNC0(fd);
		return -1;
	}

	bitmap_git->pack = packfile;
	bitmap_git->map_size = FUNC10(st.st_size);
	bitmap_git->map = FUNC9(NULL, bitmap_git->map_size, PROT_READ, MAP_PRIVATE, fd, 0);
	bitmap_git->map_pos = 0;
	FUNC0(fd);

	if (FUNC4(bitmap_git) < 0) {
		FUNC5(bitmap_git->map, bitmap_git->map_size);
		bitmap_git->map = NULL;
		bitmap_git->map_size = 0;
		return -1;
	}

	return 0;
}