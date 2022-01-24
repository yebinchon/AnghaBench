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
typedef  int /*<<< orphan*/  hdr ;
typedef  int /*<<< orphan*/  git_zstream ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;

/* Variables and functions */
 int MAX_HEADER_LEN ; 
 int OBJ_BLOB ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 unsigned long big_file_threshold ; 
 scalar_t__ FUNC1 (struct object_id const*,void*,unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,unsigned long,char const*,struct object_id const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 void* FUNC7 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,unsigned long*) ; 
 int /*<<< orphan*/  FUNC8 (void*,unsigned long) ; 
 char* FUNC9 (struct object_id const*) ; 
 int FUNC10 (char*,unsigned long*) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,void*,unsigned long,char*,int) ; 
 void* FUNC13 (int /*<<< orphan*/ *,char*,unsigned long,struct object_id const*) ; 

int FUNC14(const char *path,
		      const struct object_id *expected_oid,
		      enum object_type *type,
		      unsigned long *size,
		      void **contents)
{
	int ret = -1;
	void *map = NULL;
	unsigned long mapsize;
	git_zstream stream;
	char hdr[MAX_HEADER_LEN];

	*contents = NULL;

	map = FUNC7(the_repository, path, NULL, &mapsize);
	if (!map) {
		FUNC4(FUNC0("unable to mmap %s"), path);
		goto out;
	}

	if (FUNC12(&stream, map, mapsize, hdr, sizeof(hdr)) < 0) {
		FUNC3(FUNC0("unable to unpack header of %s"), path);
		goto out;
	}

	*type = FUNC10(hdr, size);
	if (*type < 0) {
		FUNC3(FUNC0("unable to parse header of %s"), path);
		FUNC6(&stream);
		goto out;
	}

	if (*type == OBJ_BLOB && *size > big_file_threshold) {
		if (FUNC2(&stream, hdr, *size, path, expected_oid) < 0)
			goto out;
	} else {
		*contents = FUNC13(&stream, hdr, *size, expected_oid);
		if (!*contents) {
			FUNC3(FUNC0("unable to unpack contents of %s"), path);
			FUNC6(&stream);
			goto out;
		}
		if (FUNC1(expected_oid, *contents,
					 *size, FUNC11(*type))) {
			FUNC3(FUNC0("hash mismatch for %s (expected %s)"), path,
			      FUNC9(expected_oid));
			FUNC5(*contents);
			goto out;
		}
	}

	ret = 0; /* everything checks out */

out:
	if (map)
		FUNC8(map, mapsize);
	return ret;
}