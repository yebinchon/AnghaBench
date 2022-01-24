#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {struct TYPE_20__* link; } ;
struct TYPE_16__ {TYPE_3__* cse; } ;
struct TYPE_17__ {TYPE_1__ t; } ;
struct TYPE_19__ {int ref; TYPE_2__ u; int /*<<< orphan*/  defined; } ;
struct TYPE_18__ {int count; scalar_t__ op; TYPE_8__** syms; struct TYPE_18__** kids; } ;
typedef  TYPE_3__* Node ;

/* Variables and functions */
 scalar_t__ ADDRF ; 
 scalar_t__ ADDRL ; 
 scalar_t__ B ; 
 scalar_t__ INDIR ; 
 scalar_t__ P ; 
 int /*<<< orphan*/  REGISTER ; 
 TYPE_9__* FUNC0 (TYPE_8__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 TYPE_3__* FUNC4 (scalar_t__,TYPE_3__*,int /*<<< orphan*/ *,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 TYPE_9__** tail ; 
 TYPE_8__* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC8 (TYPE_3__*) ; 

__attribute__((used)) static Node FUNC9(Node p, int listed) {
	if (p) {
		if (p->syms[2])
			p = FUNC8(p);
		else if ((p->count <= 1 && !FUNC3(p->op))
		||       (p->count == 0 &&  FUNC3(p->op))) {
			p->kids[0] = FUNC9(p->kids[0], 0);
			p->kids[1] = FUNC9(p->kids[1], 0);
		}

		else if (FUNC6(p->op) == ADDRL+P || FUNC6(p->op) == ADDRF+P) {
			FUNC1(!listed);
			p = FUNC4(p->op, NULL, NULL, p->syms[0]);
			p->count = 1;
		}
		else if (p->op == INDIR+B) {
			p = FUNC4(p->op, p->kids[0], NULL, NULL);
			p->count = 1;
			p->kids[0] = FUNC9(p->kids[0], 0);
			p->kids[1] = FUNC9(p->kids[1], 0);
		}
		else {
			p->kids[0] = FUNC9(p->kids[0], 0);
			p->kids[1] = FUNC9(p->kids[1], 0);
			p->syms[2] = FUNC7(REGISTER, FUNC2(p->op, FUNC5(p->op)));
			FUNC1(!p->syms[2]->defined);
			p->syms[2]->ref = 1;
			p->syms[2]->u.t.cse = p;

			*tail = FUNC0(p->syms[2], p);
			tail = &(*tail)->link;
			if (!listed)
				p = FUNC8(p);
		};
	}
	return p;
}