#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int hideset; scalar_t__ type; struct TYPE_18__* bp; struct TYPE_18__* tp; struct TYPE_18__* lp; } ;
typedef  TYPE_1__ Tokenrow ;
typedef  TYPE_1__ Token ;
struct TYPE_19__ {TYPE_1__* ap; int /*<<< orphan*/  vp; } ;
typedef  TYPE_3__ Nlist ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ NAME ; 
 int /*<<< orphan*/  NARG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (TYPE_1__*,TYPE_1__**,int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,TYPE_1__*) ; 
 void* FUNC6 (int,TYPE_3__*) ; 
 int FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,TYPE_1__*,TYPE_1__**) ; 
 int FUNC9 (int,int) ; 

void
FUNC10(Tokenrow *trp, Nlist *np)
{
	Tokenrow ntr;
	int ntokc, narg, i;
	Token *tp;
	Tokenrow *atr[NARG+1];
	int hs;

	FUNC0(&ntr, np->vp);		/* copy macro value */
	if (np->ap==NULL)			/* parameterless */
		ntokc = 1;
	else {
		ntokc = FUNC4(trp, atr, &narg);
		if (narg<0) {			/* not actually a call (no '(') */
			trp->tp++;
			return;
		}
		if (narg != FUNC7(np->ap)) {
			FUNC3(ERROR, "Disagreement in number of macro arguments");
			trp->tp->hideset = FUNC6(trp->tp->hideset, np);
			trp->tp += ntokc;
			return;
		}
		FUNC8(np, &ntr, atr);	/* put args into replacement */
		for (i=0; i<narg; i++) {
			FUNC2(atr[i]->bp);
			FUNC2(atr[i]);
		}
	}
	FUNC1(&ntr);				/* execute ## operators */
	hs = FUNC6(trp->tp->hideset, np);
	for (tp=ntr.bp; tp<ntr.lp; tp++) {	/* distribute hidesets */
		if (tp->type==NAME) {
			if (tp->hideset==0)
				tp->hideset = hs;
			else
				tp->hideset = FUNC9(tp->hideset, hs);
		}
	}
	ntr.tp = ntr.bp;
	FUNC5(trp, ntokc, &ntr);
	trp->tp -= FUNC7(&ntr);
	FUNC2(ntr.bp);
}