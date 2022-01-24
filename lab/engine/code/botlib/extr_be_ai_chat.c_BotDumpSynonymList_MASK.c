#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_2__* firstsynonym; int /*<<< orphan*/  context; struct TYPE_4__* next; } ;
typedef  TYPE_1__ bot_synonymlist_t ;
struct TYPE_5__ {char* string; double weight; struct TYPE_5__* next; } ;
typedef  TYPE_2__ bot_synonym_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 

void FUNC2(bot_synonymlist_t *synlist)
{
	FILE *fp;
	bot_synonymlist_t *syn;
	bot_synonym_t *synonym;

	fp = FUNC0();
	if (!fp) return;
	for (syn = synlist; syn; syn = syn->next)
	{
	        FUNC1(fp, "%ld : [", syn->context);
		for (synonym = syn->firstsynonym; synonym; synonym = synonym->next)
		{
			FUNC1(fp, "(\"%s\", %1.2f)", synonym->string, synonym->weight);
			if (synonym->next) FUNC1(fp, ", ");
		} //end for
		FUNC1(fp, "]\n");
	} //end for
}