#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int type; int subtype; TYPE_3__* first; struct TYPE_5__* next; } ;
typedef  TYPE_1__ bot_matchtemplate_t ;
struct TYPE_6__ {char* string; struct TYPE_6__* next; } ;
typedef  TYPE_2__ bot_matchstring_t ;
struct TYPE_7__ {scalar_t__ type; int variable; struct TYPE_7__* next; TYPE_2__* firststring; } ;
typedef  TYPE_3__ bot_matchpiece_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 scalar_t__ MT_STRING ; 
 scalar_t__ MT_VARIABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 

void FUNC2(bot_matchtemplate_t *matches)
{
	FILE *fp;
	bot_matchtemplate_t *mt;
	bot_matchpiece_t *mp;
	bot_matchstring_t *ms;

	fp = FUNC0();
	if (!fp) return;
	for (mt = matches; mt; mt = mt->next)
	{
	        FUNC1(fp, "{ " );
		for (mp = mt->first; mp; mp = mp->next)
		{
			if (mp->type == MT_STRING)
			{
				for (ms = mp->firststring; ms; ms = ms->next)
				{
					FUNC1(fp, "\"%s\"", ms->string);
					if (ms->next) FUNC1(fp, "|");
				} //end for
			} //end if
			else if (mp->type == MT_VARIABLE)
			{
				FUNC1(fp, "%d", mp->variable);
			} //end else if
			if (mp->next) FUNC1(fp, ", ");
		} //end for
		FUNC1(fp, " = (%d, %d);}\n", mt->type, mt->subtype);
	} //end for
}