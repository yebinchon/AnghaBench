#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_9__ ;
typedef  struct TYPE_23__   TYPE_8__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct swtch {int lab; scalar_t__ ncases; TYPE_9__* deflab; void* labels; void* values; int /*<<< orphan*/  size; TYPE_8__* sym; } ;
typedef  TYPE_4__* Tree ;
struct TYPE_24__ {scalar_t__ ref; } ;
struct TYPE_23__ {scalar_t__ type; } ;
struct TYPE_22__ {TYPE_3__* next; struct TYPE_22__* prev; } ;
struct TYPE_21__ {scalar_t__ type; TYPE_2__** kids; int /*<<< orphan*/  op; } ;
struct TYPE_20__ {TYPE_5__* prev; } ;
struct TYPE_18__ {TYPE_8__* sym; } ;
struct TYPE_19__ {TYPE_1__ u; int /*<<< orphan*/  op; } ;
typedef  TYPE_5__* Code ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC ; 
 scalar_t__ INDIR ; 
 int /*<<< orphan*/  REGISTER ; 
 int /*<<< orphan*/  SWSIZE ; 
 int /*<<< orphan*/  Switch ; 
 int /*<<< orphan*/  FUNC0 (TYPE_8__*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_8__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_4__* FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_5__* codelist ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char) ; 
 TYPE_4__* FUNC9 (char) ; 
 TYPE_9__* FUNC10 (int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 TYPE_8__* FUNC12 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  inttype ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  level ; 
 void* FUNC17 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__) ; 
 double refinc ; 
 TYPE_4__* FUNC19 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int,struct swtch*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct swtch*) ; 
 int /*<<< orphan*/  t ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (char*) ; 

__attribute__((used)) static void FUNC24(int loop, int lab, int lev) {
	Tree e;
	struct swtch sw;
	Code head, tail;

	t = FUNC13();
	FUNC8('(');
	FUNC6(NULL);
	e = FUNC9(')');
	if (!FUNC15(e->type)) {
		FUNC7("illegal type `%t' in switch expression\n",
			e->type);
		e = FUNC19(e, inttype);
	}
	e = FUNC3(e, FUNC18(e->type));
	if (FUNC11(e->op) == INDIR && FUNC14(e->kids[0]->op)
	&& e->kids[0]->u.sym->type == e->type
	&& !FUNC16(e->kids[0]->u.sym->type)) {
		sw.sym = e->kids[0]->u.sym;
		FUNC22(NULL, 0, 0);
	} else {
		sw.sym = FUNC12(REGISTER, e->type, level);
		FUNC0(sw.sym);
		FUNC22(FUNC1(sw.sym, e), 0, 0);
	}
	head = FUNC4(Switch);
	sw.lab = lab;
	sw.deflab = NULL;
	sw.ncases = 0;
	sw.size = SWSIZE;
	sw.values = FUNC17(SWSIZE, sizeof *sw.values, FUNC);
	sw.labels = FUNC17(SWSIZE, sizeof *sw.labels, FUNC);
	refinc /= 10.0;
	FUNC20(loop, &sw, lev);
	if (sw.deflab == NULL) {
		sw.deflab = FUNC10(lab);
		FUNC5(lab);
		if (sw.ncases == 0)
			FUNC23("switch statement with no cases\n");
	}
	if (FUNC10(lab + 1)->ref)
		FUNC5(lab + 1);
	tail = codelist;
	codelist = head->prev;
	codelist->next = head->prev = NULL;
	if (sw.ncases > 0)
		FUNC21(&sw);
	FUNC2(lab);
	head->next->prev = codelist;
	codelist->next = head->next;
	codelist = tail;
}