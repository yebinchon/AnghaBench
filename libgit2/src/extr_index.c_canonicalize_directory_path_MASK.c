#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char* path; } ;
typedef  TYPE_1__ git_index_entry ;
struct TYPE_9__ {int /*<<< orphan*/  entries; int /*<<< orphan*/  entries_search_path; int /*<<< orphan*/  ignore_case; } ;
typedef  TYPE_2__ git_index ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,size_t) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char) ; 
 size_t FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char*,char*,size_t) ; 
 scalar_t__ FUNC9 (char*,char*,size_t) ; 
 char* FUNC10 (char*,char) ; 

__attribute__((used)) static int FUNC11(
	git_index *index,
	git_index_entry *entry,
	git_index_entry *existing)
{
	const git_index_entry *match, *best = NULL;
	char *search, *sep;
	size_t pos, search_len, best_len;

	if (!index->ignore_case)
		return 0;

	/* item already exists in the index, simply re-use the existing case */
	if (existing) {
		FUNC5((char *)entry->path, existing->path, FUNC7(existing->path));
		return 0;
	}

	/* nothing to do */
	if (FUNC6(entry->path, '/') == NULL)
		return 0;

	if ((search = FUNC2(entry->path)) == NULL)
		return -1;

	/* starting at the parent directory and descending to the root, find the
	 * common parent directory.
	 */
	while (!best && (sep = FUNC10(search, '/'))) {
		sep[1] = '\0';

		search_len = FUNC7(search);

		FUNC3(
			&pos, &index->entries, index->entries_search_path, search);

		while ((match = FUNC4(&index->entries, pos))) {
			if (FUNC0(match) != 0) {
				/* conflicts do not contribute to canonical paths */
			} else if (FUNC9(search, match->path, search_len) == 0) {
				/* prefer an exact match to the input filename */
				best = match;
				best_len = search_len;
				break;
			} else if (FUNC8(search, match->path, search_len) == 0) {
				/* continue walking, there may be a path with an exact
				 * (case sensitive) match later in the index, but use this
				 * as the best match until that happens.
				 */
				if (!best) {
					best = match;
					best_len = search_len;
				}
			} else {
				break;
			}

			pos++;
		}

		sep[0] = '\0';
	}

	if (best)
		FUNC5((char *)entry->path, best->path, best_len);

	FUNC1(search);
	return 0;
}