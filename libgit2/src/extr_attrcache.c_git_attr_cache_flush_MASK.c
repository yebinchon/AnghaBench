#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  attrcache; } ;
typedef  TYPE_1__ git_repository ;
typedef  int /*<<< orphan*/  git_attr_cache ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC2(git_repository *repo)
{
	git_attr_cache *cache;

	/* this could be done less expensively, but for now, we'll just free
	 * the entire attrcache and let the next use reinitialize it...
	 */
	if (repo && (cache = FUNC1(repo->attrcache, NULL)) != NULL)
		FUNC0(cache);
}