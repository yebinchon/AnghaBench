#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_8__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_1__* tp; TYPE_1__* lp; TYPE_1__* bp; } ;
typedef  TYPE_2__ Tokenrow ;
struct TYPE_12__ {int line; int lineinc; scalar_t__ ifdepth; } ;
struct TYPE_10__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ END ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ SHARP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_8__* cursource ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (TYPE_2__*,int) ; 
 scalar_t__ ifdepth ; 
 scalar_t__ incdepth ; 
 int /*<<< orphan*/  outbuf ; 
 int /*<<< orphan*/  outbufp ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 scalar_t__ skipping ; 
 int /*<<< orphan*/  FUNC7 () ; 

void
FUNC8(Tokenrow *trp)
{
	int anymacros = 0;

	for (;;) {
		if (trp->tp >= trp->lp) {
			trp->tp = trp->lp = trp->bp;
			outbufp = outbuf;
			anymacros |= FUNC4(trp, 1);
			trp->tp = trp->bp;
		}
		if (trp->tp->type == END) {
			if (--incdepth>=0) {
				if (cursource->ifdepth)
					FUNC1(ERROR,
					 "Unterminated conditional in #include");
				FUNC7();
				cursource->line += cursource->lineinc;
				trp->tp = trp->lp;
				FUNC3();
				continue;
			}
			if (ifdepth)
				FUNC1(ERROR, "Unterminated #if/#ifdef/#ifndef");
			break;
		}
		if (trp->tp->type==SHARP) {
			trp->tp += 1;
			FUNC0(trp);
		} else if (!skipping && anymacros)
			FUNC2(trp, NULL);
		if (skipping)
			FUNC6(trp);
		FUNC5(trp);
		anymacros = 0;
		cursource->line += cursource->lineinc;
		if (cursource->lineinc>1) {
			FUNC3();
		}
	}
}