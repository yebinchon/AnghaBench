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
struct stat {int /*<<< orphan*/  st_size; } ;
struct packed_git {int dummy; } ;
struct TYPE_2__ {unsigned int rawsz; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAP_PRIVATE ; 
 int /*<<< orphan*/  PROT_READ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*,char const*) ; 
 scalar_t__ FUNC2 (int,struct stat*) ; 
 int FUNC3 (char const*) ; 
 int FUNC4 (char const*,unsigned int const,void*,size_t,struct packed_git*) ; 
 int /*<<< orphan*/  FUNC5 (void*,size_t) ; 
 TYPE_1__* the_hash_algo ; 
 void* FUNC6 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 size_t FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(const char *path, struct packed_git *p)
{
	void *idx_map;
	size_t idx_size;
	int fd = FUNC3(path), ret;
	struct stat st;
	const unsigned int hashsz = the_hash_algo->rawsz;

	if (fd < 0)
		return -1;
	if (FUNC2(fd, &st)) {
		FUNC0(fd);
		return -1;
	}
	idx_size = FUNC7(st.st_size);
	if (idx_size < 4 * 256 + hashsz + hashsz) {
		FUNC0(fd);
		return FUNC1("index file %s is too small", path);
	}
	idx_map = FUNC6(NULL, idx_size, PROT_READ, MAP_PRIVATE, fd, 0);
	FUNC0(fd);

	ret = FUNC4(path, hashsz, idx_map, idx_size, p);

	if (ret)
		FUNC5(idx_map, idx_size);

	return ret;
}