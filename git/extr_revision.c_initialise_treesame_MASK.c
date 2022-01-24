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
struct treesame_state {unsigned int nparents; } ;
struct rev_info {int /*<<< orphan*/  treesame; } ;
struct commit {int /*<<< orphan*/  object; int /*<<< orphan*/  parents; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct treesame_state*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned int) ; 
 struct treesame_state* FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct treesame_state *FUNC4(struct rev_info *revs, struct commit *commit)
{
	unsigned n = FUNC1(commit->parents);
	struct treesame_state *st = FUNC3(1, FUNC2(sizeof(*st), n));
	st->nparents = n;
	FUNC0(&revs->treesame, &commit->object, st);
	return st;
}