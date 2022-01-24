#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__** punctuationtable; } ;
typedef  TYPE_1__ script_t ;
struct TYPE_7__ {scalar_t__* p; struct TYPE_7__* next; } ;
typedef  TYPE_2__ punctuation_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__**,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (scalar_t__*) ; 

void FUNC3(script_t *script, punctuation_t *punctuations)
{
	int i;
	punctuation_t *p, *lastp, *newp;

	//get memory for the table
	if (!script->punctuationtable) script->punctuationtable = (punctuation_t **)
												FUNC1(256 * sizeof(punctuation_t *));
	FUNC0(script->punctuationtable, 0, 256 * sizeof(punctuation_t *));
	//add the punctuations in the list to the punctuation table
	for (i = 0; punctuations[i].p; i++)
	{
		newp = &punctuations[i];
		lastp = NULL;
		//sort the punctuations in this table entry on length (longer punctuations first)
		for (p = script->punctuationtable[(unsigned int) newp->p[0]]; p; p = p->next)
		{
			if (FUNC2(p->p) < FUNC2(newp->p))
			{
				newp->next = p;
				if (lastp) lastp->next = newp;
				else script->punctuationtable[(unsigned int) newp->p[0]] = newp;
				break;
			} //end if
			lastp = p;
		} //end for
		if (!p)
		{
			newp->next = NULL;
			if (lastp) lastp->next = newp;
			else script->punctuationtable[(unsigned int) newp->p[0]] = newp;
		} //end if
	} //end for
}