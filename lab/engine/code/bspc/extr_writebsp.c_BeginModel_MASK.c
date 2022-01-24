#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_7__ {int /*<<< orphan*/  maxs; int /*<<< orphan*/  mins; int /*<<< orphan*/  numsides; } ;
typedef  TYPE_1__ mapbrush_t ;
struct TYPE_8__ {int firstbrush; int numbrushes; } ;
typedef  TYPE_2__ entity_t ;
struct TYPE_9__ {int /*<<< orphan*/  maxs; int /*<<< orphan*/  mins; void* firstface; } ;
typedef  TYPE_3__ dmodel_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 size_t MAX_MAP_MODELS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* dmodels ; 
 TYPE_2__* entities ; 
 size_t entity_num ; 
 int /*<<< orphan*/  firstmodeledge ; 
 void* firstmodelface ; 
 int /*<<< orphan*/  firstmodleaf ; 
 TYPE_1__* mapbrushes ; 
 int /*<<< orphan*/  numedges ; 
 void* numfaces ; 
 int /*<<< orphan*/  numleafs ; 
 size_t nummodels ; 

void FUNC4 (void)
{
	dmodel_t	*mod;
	int			start, end;
	mapbrush_t	*b;
	int			j;
	entity_t	*e;
	vec3_t		mins, maxs;

	if (nummodels == MAX_MAP_MODELS)
		FUNC2 ("MAX_MAP_MODELS");
	mod = &dmodels[nummodels];

	mod->firstface = numfaces;

	firstmodleaf = numleafs;
	firstmodeledge = numedges;
	firstmodelface = numfaces;

	//
	// bound the brushes
	//
	e = &entities[entity_num];

	start = e->firstbrush;
	end = start + e->numbrushes;
	FUNC1 (mins, maxs);

	for (j=start ; j<end ; j++)
	{
		b = &mapbrushes[j];
		if (!b->numsides)
			continue;	// not a real brush (origin brush)
		FUNC0 (b->mins, mins, maxs);
		FUNC0 (b->maxs, mins, maxs);
	}

	FUNC3 (mins, mod->mins);
	FUNC3 (maxs, mod->maxs);
}