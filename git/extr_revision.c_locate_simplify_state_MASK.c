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
struct rev_info {int /*<<< orphan*/  merge_simplification; } ;
struct merge_simplify_state {int dummy; } ;
struct commit {int /*<<< orphan*/  object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct merge_simplify_state*) ; 
 struct merge_simplify_state* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct merge_simplify_state* FUNC2 (int,int) ; 

__attribute__((used)) static struct merge_simplify_state *FUNC3(struct rev_info *revs, struct commit *commit)
{
	struct merge_simplify_state *st;

	st = FUNC1(&revs->merge_simplification, &commit->object);
	if (!st) {
		st = FUNC2(1, sizeof(*st));
		FUNC0(&revs->merge_simplification, &commit->object, st);
	}
	return st;
}