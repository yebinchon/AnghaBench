#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__** p; } ;
typedef  TYPE_1__ winding_t ;
typedef  int /*<<< orphan*/  vec_t ;
struct TYPE_10__ {size_t planenum; size_t texinfo; } ;
typedef  TYPE_2__ side_t ;
struct TYPE_11__ {int numsides; TYPE_2__* original_sides; } ;
typedef  TYPE_3__ mapbrush_t ;
struct TYPE_13__ {int* normal; int /*<<< orphan*/  dist; } ;
struct TYPE_12__ {char* texture; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,...) ; 
 TYPE_3__* mapbrushes ; 
 TYPE_5__* mapplanes ; 
 int nummapbrushes ; 
 TYPE_4__* texinfo ; 

void FUNC8 (void)
{
	FILE	*f;
	side_t	*s;
	int		i, j, bn;
	winding_t	*w;
	char	*name = "expanded.map";
	mapbrush_t	*brush;
	vec_t	dist;

	FUNC3("writing %s\n", name);
	f = FUNC6 (name, "wb");
	if (!f)
		FUNC1 ("Can't write %s\n", name);

	FUNC7 (f, "{\n\"classname\" \"worldspawn\"\n");

	for (bn=0 ; bn<nummapbrushes ; bn++)
	{
		brush = &mapbrushes[bn];
		FUNC7 (f, "{\n");
		for (i=0 ; i<brush->numsides ; i++)
		{
			s = brush->original_sides + i;
			dist = mapplanes[s->planenum].dist;
			for (j=0 ; j<3 ; j++)
				dist += FUNC4( 16 * mapplanes[s->planenum].normal[j] );

			w = FUNC0 (mapplanes[s->planenum].normal, dist);

			FUNC7 (f,"( %i %i %i ) ", (int)w->p[0][0], (int)w->p[0][1], (int)w->p[0][2]);
			FUNC7 (f,"( %i %i %i ) ", (int)w->p[1][0], (int)w->p[1][1], (int)w->p[1][2]);
			FUNC7 (f,"( %i %i %i ) ", (int)w->p[2][0], (int)w->p[2][1], (int)w->p[2][2]);

			FUNC7 (f, "%s 0 0 0 1 1\n", texinfo[s->texinfo].texture);
			FUNC2 (w);
		}
		FUNC7 (f, "}\n");
	}
	FUNC7 (f, "}\n");

	FUNC5 (f);

	FUNC1 ("can't proceed after expanding brushes");
}