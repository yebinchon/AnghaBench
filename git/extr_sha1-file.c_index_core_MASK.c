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
struct object_id {int dummy; } ;
struct index_state {int dummy; } ;
typedef  size_t ssize_t ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;

/* Variables and functions */
 int /*<<< orphan*/  MAP_PRIVATE ; 
 int /*<<< orphan*/  PROT_READ ; 
 size_t SMALL_FILE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (struct index_state*,struct object_id*,void*,size_t,int,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (void*,size_t) ; 
 size_t FUNC6 (int,char*,size_t) ; 
 char* FUNC7 (size_t) ; 
 void* FUNC8 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct index_state *istate,
		      struct object_id *oid, int fd, size_t size,
		      enum object_type type, const char *path,
		      unsigned flags)
{
	int ret;

	if (!size) {
		ret = FUNC4(istate, oid, "", size, type, path, flags);
	} else if (size <= SMALL_FILE_SIZE) {
		char *buf = FUNC7(size);
		ssize_t read_result = FUNC6(fd, buf, size);
		if (read_result < 0)
			ret = FUNC2(FUNC0("read error while indexing %s"),
					  path ? path : "<unknown>");
		else if (read_result != size)
			ret = FUNC1(FUNC0("short read while indexing %s"),
				    path ? path : "<unknown>");
		else
			ret = FUNC4(istate, oid, buf, size, type, path, flags);
		FUNC3(buf);
	} else {
		void *buf = FUNC8(NULL, size, PROT_READ, MAP_PRIVATE, fd, 0);
		ret = FUNC4(istate, oid, buf, size, type, path, flags);
		FUNC5(buf, size);
	}
	return ret;
}