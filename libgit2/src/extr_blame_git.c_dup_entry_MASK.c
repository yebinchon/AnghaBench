#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ score; struct TYPE_6__* next; struct TYPE_6__* prev; int /*<<< orphan*/  suspect; } ;
typedef  TYPE_1__ git_blame__entry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(git_blame__entry *dst, git_blame__entry *src)
{
	git_blame__entry *p, *n;

	p = dst->prev;
	n = dst->next;
	FUNC2(src->suspect);
	FUNC1(dst->suspect);
	FUNC0(dst, src, sizeof(*src));
	dst->prev = p;
	dst->next = n;
	dst->score = 0;
}