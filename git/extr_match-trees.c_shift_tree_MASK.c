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
struct repository {int dummy; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct repository*,struct object_id const*,char*,struct object_id*,unsigned short*) ; 
 int /*<<< orphan*/  FUNC2 (struct object_id const*,struct object_id const*,int*,char**,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct object_id const*) ; 
 int /*<<< orphan*/  FUNC4 (struct object_id*,struct object_id const*) ; 
 int FUNC5 (struct object_id const*,struct object_id const*) ; 
 int /*<<< orphan*/  FUNC6 (struct object_id const*,char*,struct object_id const*,struct object_id*) ; 
 char* FUNC7 (int,int) ; 

void FUNC8(struct repository *r,
		const struct object_id *hash1,
		const struct object_id *hash2,
		struct object_id *shifted,
		int depth_limit)
{
	char *add_prefix;
	char *del_prefix;
	int add_score, del_score;

	/*
	 * NEEDSWORK: this limits the recursion depth to hardcoded
	 * value '2' to avoid excessive overhead.
	 */
	if (!depth_limit)
		depth_limit = 2;

	add_score = del_score = FUNC5(hash1, hash2);
	add_prefix = FUNC7(1, 1);
	del_prefix = FUNC7(1, 1);

	/*
	 * See if one's subtree resembles two; if so we need to prefix
	 * two with a few fake trees to match the prefix.
	 */
	FUNC2(hash1, hash2, &add_score, &add_prefix, "", depth_limit);

	/*
	 * See if two's subtree resembles one; if so we need to
	 * pick only subtree of two.
	 */
	FUNC2(hash2, hash1, &del_score, &del_prefix, "", depth_limit);

	/* Assume we do not have to do any shifting */
	FUNC4(shifted, hash2);

	if (add_score < del_score) {
		/* We need to pick a subtree of two */
		unsigned short mode;

		if (!*del_prefix)
			return;

		if (FUNC1(r, hash2, del_prefix, shifted, &mode))
			FUNC0("cannot find path %s in tree %s",
			    del_prefix, FUNC3(hash2));
		return;
	}

	if (!*add_prefix)
		return;

	FUNC6(hash1, add_prefix, hash2, shifted);
}