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
struct index_entry {int dummy; } ;
struct git_delta_index {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (size_t*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (size_t*,size_t,int) ; 
 int /*<<< orphan*/  GIT_ERROR_NOMEMORY ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 void* FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC6(
	void **out, unsigned long *out_len, size_t entries, size_t hash_count)
{
	size_t entries_len, hash_len, index_len;

	FUNC2(&entries_len, entries, sizeof(struct index_entry));
	FUNC2(&hash_len, hash_count, sizeof(struct index_entry *));

	FUNC1(&index_len, sizeof(struct git_delta_index), entries_len);
	FUNC1(&index_len, index_len, hash_len);

	if (!FUNC3(index_len)) {
		FUNC5(GIT_ERROR_NOMEMORY, "overly large delta");
		return -1;
	}

	*out = FUNC4(index_len);
	FUNC0(*out);

	*out_len = (unsigned long)index_len;
	return 0;
}