#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {struct TYPE_21__* next; } ;
typedef  TYPE_1__ bspbrush_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 TYPE_1__* FUNC8 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (char*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,TYPE_1__*) ; 
 scalar_t__ cancelconversion ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 scalar_t__ startbrush ; 

bspbrush_t *FUNC12 (bspbrush_t *head)
{
	bspbrush_t	*b1, *b2, *next;
	bspbrush_t	*tail;
	bspbrush_t	*keep;
	bspbrush_t	*sub, *sub2;
	int			c1, c2;
	int num_csg_iterations;

	FUNC6("-------- Brush CSG ---------\n");
	FUNC6("%6d original brushes\n", FUNC3 (head));

	num_csg_iterations = 0;
	FUNC11("%6d output brushes", num_csg_iterations);

#if 0
	if (startbrush == 0)
		WriteBrushList ("before.gl", head, false);
#endif
	keep = NULL;

newlist:
	// find tail
	if (!head) return NULL;

	for (tail = head; tail->next; tail = tail->next)
		;

	for (b1=head ; b1 ; b1=next)
	{
		next = b1->next;

		//if the conversion is cancelled
		if (cancelconversion)
		{
			b1->next = keep;
			keep = b1;
			continue;
		} //end if
		
		for (b2 = b1->next; b2; b2 = b2->next)
		{
			if (FUNC2 (b1, b2))
				continue;

			sub = NULL;
			sub2 = NULL;
			c1 = 999999;
			c2 = 999999;

			if (FUNC1 (b2, b1))
			{
				sub = FUNC8 (b1, b2);
				if (sub == b1)
				{
					continue;		// didn't really intersect
				} //end if
				if (!sub)
				{	// b1 is swallowed by b2
					head = FUNC4 (b1, b1);
					goto newlist;
				}
				c1 = FUNC3 (sub);
			}

			if ( FUNC1 (b1, b2) )
			{
				sub2 = FUNC8 (b2, b1);
				if (sub2 == b2)
					continue;		// didn't really intersect
				if (!sub2)
				{	// b2 is swallowed by b1
					FUNC5 (sub);
					head = FUNC4 (b1, b2);
					goto newlist;
				}
				c2 = FUNC3 (sub2);
			}

			if (!sub && !sub2)
				continue;		// neither one can bite

			// only accept if it didn't fragment
			// (commenting this out allows full fragmentation)
			if (c1 > 1 && c2 > 1)
			{
				if (sub2)
					FUNC5 (sub2);
				if (sub)
					FUNC5 (sub);
				continue;
			}

			if (c1 < c2)
			{
				if (sub2) FUNC5 (sub2);
				tail = FUNC0 (sub, tail);
				head = FUNC4 (b1, b1);
				goto newlist;
			} //end if
			else
			{
				if (sub) FUNC5 (sub);
				tail = FUNC0 (sub2, tail);
				head = FUNC4 (b1, b2);
				goto newlist;
			} //end else
		} //end for

		if (!b2)
		{	// b1 is no longer intersecting anything, so keep it
			b1->next = keep;
			keep = b1;
		} //end if
		num_csg_iterations++;
		FUNC11("\r%6d", num_csg_iterations);
	} //end for

	if (cancelconversion) return keep;
	//
	FUNC11("\n");
	FUNC7("%6d output brushes\r\n", num_csg_iterations);

#if 0
	{
		WriteBrushList ("after.gl", keep, false);
		WriteBrushMap ("after.map", keep);
	}
#endif

	return keep;
}