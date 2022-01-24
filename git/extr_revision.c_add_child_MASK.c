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
struct rev_info {int /*<<< orphan*/  children; } ;
struct commit_list {int /*<<< orphan*/  next; struct commit* item; } ;
struct commit {int /*<<< orphan*/  object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct commit_list*) ; 
 struct commit_list* FUNC1 (int,int) ; 

__attribute__((used)) static void FUNC2(struct rev_info *revs, struct commit *parent, struct commit *child)
{
	struct commit_list *l = FUNC1(1, sizeof(*l));

	l->item = child;
	l->next = FUNC0(&revs->children, &parent->object, l);
}