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
struct tree_desc {scalar_t__ size; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned short) ; 
 void* FUNC1 (struct tree_desc*,struct object_id const*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int FUNC3 (struct object_id const*,struct object_id const*) ; 
 struct object_id* FUNC4 (struct tree_desc*,char const**,unsigned short*) ; 
 int /*<<< orphan*/  FUNC5 (struct tree_desc*) ; 
 char* FUNC6 (char*,char const*,char const*) ; 

__attribute__((used)) static void FUNC7(const struct object_id *hash1,
			const struct object_id *hash2,
			int *best_score,
			char **best_match,
			const char *base,
			int recurse_limit)
{
	struct tree_desc one;
	void *one_buf = FUNC1(&one, hash1);

	while (one.size) {
		const char *path;
		const struct object_id *elem;
		unsigned short mode;
		int score;

		elem = FUNC4(&one, &path, &mode);
		if (!FUNC0(mode))
			goto next;
		score = FUNC3(elem, hash2);
		if (*best_score < score) {
			FUNC2(*best_match);
			*best_match = FUNC6("%s%s", base, path);
			*best_score = score;
		}
		if (recurse_limit) {
			char *newbase = FUNC6("%s%s/", base, path);
			FUNC7(elem, hash2, best_score, best_match,
				    newbase, recurse_limit - 1);
			FUNC2(newbase);
		}

	next:
		FUNC5(&one);
	}
	FUNC2(one_buf);
}