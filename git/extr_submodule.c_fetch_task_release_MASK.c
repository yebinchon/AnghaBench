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
struct fetch_task {scalar_t__ repo; int /*<<< orphan*/ * sub; scalar_t__ free_sub; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct fetch_task *p)
{
	if (p->free_sub)
		FUNC1((void*)p->sub);
	p->free_sub = 0;
	p->sub = NULL;

	if (p->repo)
		FUNC2(p->repo);
	FUNC0(p->repo);
}