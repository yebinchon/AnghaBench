#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {TYPE_2__* tp; TYPE_2__* bp; TYPE_2__* lp; } ;
typedef  TYPE_1__ Tokenrow ;
struct TYPE_15__ {scalar_t__ type; } ;
typedef  TYPE_2__ Token ;
typedef  int /*<<< orphan*/  Nlist ;

/* Variables and functions */
 scalar_t__ DSHARP ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ NAME ; 
 scalar_t__ SHARP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_1__* FUNC6 (TYPE_1__*) ; 

void
FUNC7(Nlist *np, Tokenrow *rtr, Tokenrow **atr)
{
	Tokenrow tatr;
	Token *tp;
	int ntok, argno;

	for (rtr->tp=rtr->bp; rtr->tp<rtr->lp; ) {
		if (rtr->tp->type==SHARP) {	/* string operator */
			tp = rtr->tp;
			rtr->tp += 1;
			if ((argno = FUNC5(np, rtr->tp))<0) {
				FUNC2(ERROR, "# not followed by macro parameter");
				continue;
			}
			ntok = 1 + (rtr->tp - tp);
			rtr->tp = tp;
			FUNC4(rtr, ntok, FUNC6(atr[argno]));
			continue;
		}
		if (rtr->tp->type==NAME
		 && (argno = FUNC5(np, rtr->tp)) >= 0) {
			if ((rtr->tp+1)->type==DSHARP
			 || (rtr->tp!=rtr->bp && (rtr->tp-1)->type==DSHARP))
				FUNC4(rtr, 1, atr[argno]);
			else {
				FUNC0(&tatr, atr[argno]);
				FUNC3(&tatr, "<macro>");
				FUNC4(rtr, 1, &tatr);
				FUNC1(tatr.bp);
			}
			continue;
		}
		rtr->tp++;
	}
}