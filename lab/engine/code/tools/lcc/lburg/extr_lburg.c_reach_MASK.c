#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* Tree ;
struct TYPE_6__ {scalar_t__ kind; int /*<<< orphan*/  reached; } ;
struct TYPE_5__ {struct TYPE_5__* right; struct TYPE_5__* left; TYPE_2__* op; } ;
typedef  TYPE_2__* Nonterm ;

/* Variables and functions */
 scalar_t__ NONTERM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC1(Tree t) {
	Nonterm p = t->op;

	if (p->kind == NONTERM)
		if (!p->reached)
			FUNC0(p);
	if (t->left)
		FUNC1(t->left);
	if (t->right)
		FUNC1(t->right);
}