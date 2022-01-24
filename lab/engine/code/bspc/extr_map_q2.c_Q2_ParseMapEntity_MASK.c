#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vec_t ;
struct TYPE_20__ {char* string; } ;
typedef  TYPE_1__ token_t ;
struct TYPE_21__ {size_t planenum; int /*<<< orphan*/  texinfo; } ;
typedef  TYPE_2__ side_t ;
typedef  int /*<<< orphan*/  script_t ;
typedef  int qboolean ;
struct TYPE_22__ {int numsides; int /*<<< orphan*/  contents; TYPE_2__* original_sides; } ;
typedef  TYPE_3__ mapbrush_t ;
struct TYPE_23__ {struct TYPE_23__* next; } ;
typedef  TYPE_4__ epair_t ;
struct TYPE_24__ {int firstbrush; int numbrushes; int areaportalnum; scalar_t__* origin; TYPE_4__* epairs; } ;
typedef  TYPE_5__ entity_t ;
struct TYPE_25__ {int /*<<< orphan*/  normal; scalar_t__ dist; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONTENTS_AREAPORTAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 size_t FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,char*,scalar_t__*) ; 
 size_t MAX_MAP_ENTITIES ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_7__*,int /*<<< orphan*/ *,scalar_t__*) ; 
 char* FUNC12 (TYPE_5__*,char*) ; 
 TYPE_2__* brushsides ; 
 int c_areaportals ; 
 TYPE_5__* entities ; 
 TYPE_3__* mapbrushes ; 
 TYPE_7__* mapplanes ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 size_t num_entities ; 
 int nummapbrushes ; 
 int /*<<< orphan*/ * side_brushtextures ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,int) ; 
 scalar_t__ FUNC15 (char*,char*) ; 

qboolean	FUNC16(script_t *script)
{
	entity_t	*mapent;
	epair_t *e;
	side_t *s;
	int i, j;
	vec_t newdist;
	mapbrush_t *b;
	token_t token;

	if (!FUNC5(script, &token)) return false;

	if (FUNC15(token.string, "{") )
		FUNC1 ("ParseEntity: { not found");
	
	if (num_entities == MAX_MAP_ENTITIES)
		FUNC1 ("num_entities == MAX_MAP_ENTITIES");

	mapent = &entities[num_entities];
	num_entities++;
	FUNC13 (mapent, 0, sizeof(*mapent));
	mapent->firstbrush = nummapbrushes;
	mapent->numbrushes = 0;
//	mapent->portalareas[0] = -1;
//	mapent->portalareas[1] = -1;

	do
	{
		if (!FUNC5(script, &token))
		{
			FUNC1("ParseEntity: EOF without closing brace");
		} //end if
		if (!FUNC15(token.string, "}")) break;
		if (!FUNC15(token.string, "{"))
		{
			FUNC9(script, mapent);
		} //end if
		else
		{
			FUNC6(script);
			e = FUNC7(script);
			e->next = mapent->epairs;
			mapent->epairs = e;
		} //end else
	} while(1);

	FUNC3(mapent, "origin", mapent->origin);

	//
	// if there was an origin brush, offset all of the planes and texinfo
	//
	if (mapent->origin[0] || mapent->origin[1] || mapent->origin[2])
	{
		for (i=0 ; i<mapent->numbrushes ; i++)
		{
			b = &mapbrushes[mapent->firstbrush + i];
			for (j=0 ; j<b->numsides ; j++)
			{
				s = &b->original_sides[j];
				newdist = mapplanes[s->planenum].dist -
					FUNC0 (mapplanes[s->planenum].normal, mapent->origin);
				s->planenum = FUNC2 (mapplanes[s->planenum].normal, newdist);
				s->texinfo = FUNC11 (&mapplanes[s->planenum],
					&side_brushtextures[s-brushsides], mapent->origin);
			}
			FUNC4 (b);
		}
	}

	// group entities are just for editor convenience
	// toss all brushes into the world entity
	if (!FUNC15 ("func_group", FUNC12 (mapent, "classname")))
	{
		FUNC8 (mapent);
		mapent->numbrushes = 0;
		return true;
	}

	// areaportal entities move their brushes, but don't eliminate
	// the entity
	if (!FUNC15 ("func_areaportal", FUNC12 (mapent, "classname")))
	{
		char	str[128];

		if (mapent->numbrushes != 1)
			FUNC1 ("Entity %i: func_areaportal can only be a single brush", num_entities-1);

		b = &mapbrushes[nummapbrushes-1];
		b->contents = CONTENTS_AREAPORTAL;
		c_areaportals++;
		mapent->areaportalnum = c_areaportals;
		// set the portal number as "style"
		FUNC14 (str, "%i", c_areaportals);
		FUNC10 (mapent, "style", str);
		FUNC8 (mapent);
		return true;
	}

	return true;
}