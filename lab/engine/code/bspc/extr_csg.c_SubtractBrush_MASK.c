#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int numsides; struct TYPE_12__* next; TYPE_1__* sides; } ;
typedef  TYPE_2__ bspbrush_t ;
struct TYPE_11__ {int /*<<< orphan*/  planenum; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_2__**,TYPE_2__**) ; 

bspbrush_t *FUNC3 (bspbrush_t *a, bspbrush_t *b)
{	// a - b = out (list)
	int		i;
	bspbrush_t	*front, *back;
	bspbrush_t	*out, *in;

	in = a;
	out = NULL;
	for (i = 0; i < b->numsides && in; i++)
	{
		FUNC2(in, b->sides[i].planenum, &front, &back);
		if (in != a) FUNC0(in);
		if (front)
		{	// add to list
			front->next = out;
			out = front;
		} //end if
		in = back;
	} //end for
	if (in)
	{
		FUNC0 (in);
	} //end if
	else
	{	// didn't really intersect
		FUNC1 (out);
		return a;
	} //end else
	return out;
}