#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_7__ ;
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {int /*<<< orphan*/  dist; int /*<<< orphan*/  normal; } ;
typedef  TYPE_1__ sin_dplane_t ;
struct TYPE_23__ {size_t texinfo; size_t planenum; } ;
typedef  TYPE_2__ sin_dbrushside_t ;
struct TYPE_24__ {int numsides; int firstside; int contents; } ;
typedef  TYPE_3__ sin_dbrush_t ;
struct TYPE_25__ {int contents; int surf; int planenum; size_t texinfo; int /*<<< orphan*/  flags; } ;
typedef  TYPE_4__ side_t ;
struct TYPE_26__ {int numsides; int contents; TYPE_4__* original_sides; scalar_t__ brushnum; TYPE_6__* entitynum; int /*<<< orphan*/  leafnum; } ;
typedef  TYPE_5__ mapbrush_t ;
struct TYPE_27__ {int /*<<< orphan*/  numbrushes; scalar_t__ firstbrush; } ;
typedef  TYPE_6__ entity_t ;
struct TYPE_28__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,TYPE_6__*,int) ; 
 scalar_t__ FUNC1 (TYPE_5__*) ; 
 int CONTENTS_DETAIL ; 
 int CONTENTS_LAVA ; 
 int CONTENTS_MIST ; 
 int CONTENTS_MONSTERCLIP ; 
 int CONTENTS_PLAYERCLIP ; 
 int CONTENTS_SLIME ; 
 int CONTENTS_SOLID ; 
 int CONTENTS_WATER ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int LAST_VISIBLE_CONTENTS ; 
 int /*<<< orphan*/  FUNC4 (char*,TYPE_6__*,scalar_t__) ; 
 size_t MAX_MAPFILE_BRUSHES ; 
 size_t MAX_MAPFILE_BRUSHSIDES ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  SFL_TEXTURED ; 
 int SURF_HINT ; 
 int SURF_SKIP ; 
 int SURF_TRANS33 ; 
 int SURF_TRANS66 ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 size_t TEXINFO_NODE ; 
 TYPE_4__* brushsides ; 
 int /*<<< orphan*/  c_clipbrushes ; 
 int /*<<< orphan*/  c_squattbrushes ; 
 scalar_t__ create_aas ; 
 int /*<<< orphan*/ * dbrushleafnums ; 
 int entities ; 
 scalar_t__ fulldetail ; 
 TYPE_5__* mapbrushes ; 
 scalar_t__ nodetail ; 
 scalar_t__ nowater ; 
 size_t nummapbrushes ; 
 size_t nummapbrushsides ; 
 TYPE_3__* sin_dbrushes ; 
 TYPE_2__* sin_dbrushsides ; 
 scalar_t__* sin_dbrushsidetextured ; 
 TYPE_1__* sin_dplanes ; 
 TYPE_7__* sin_texinfo ; 

void FUNC8(sin_dbrush_t *bspbrush, entity_t *mapent)
{
	mapbrush_t *b;
	int i, k, n;
	side_t *side, *s2;
	int planenum;
	sin_dbrushside_t *bspbrushside;
	sin_dplane_t *bspplane;

	if (nummapbrushes >= MAX_MAPFILE_BRUSHES)
		FUNC2 ("nummapbrushes >= MAX_MAPFILE_BRUSHES");

	b = &mapbrushes[nummapbrushes];
	b->original_sides = &brushsides[nummapbrushsides];
	b->entitynum = mapent-entities;
	b->brushnum = nummapbrushes - mapent->firstbrush;
	b->leafnum = dbrushleafnums[bspbrush - sin_dbrushes];

	for (n = 0; n < bspbrush->numsides; n++)
	{
		//pointer to the bsp brush side
		bspbrushside = &sin_dbrushsides[bspbrush->firstside + n];

		if (nummapbrushsides >= MAX_MAPFILE_BRUSHSIDES)
		{
			FUNC2 ("MAX_MAPFILE_BRUSHSIDES");
		} //end if
		//pointer to the map brush side
		side = &brushsides[nummapbrushsides];
		//if the BSP brush side is textured
		if (sin_dbrushsidetextured[bspbrush->firstside + n]) side->flags |= SFL_TEXTURED;
		else side->flags &= ~SFL_TEXTURED;
		//ME: can get side contents and surf directly from BSP file
		side->contents = bspbrush->contents;
		//if the texinfo is TEXINFO_NODE
		if (bspbrushside->texinfo < 0) side->surf = 0;
		else side->surf = sin_texinfo[bspbrushside->texinfo].flags;

		// translucent objects are automatically classified as detail
		if (side->surf & (SURF_TRANS33|SURF_TRANS66) )
			side->contents |= CONTENTS_DETAIL;
		if (side->contents & (CONTENTS_PLAYERCLIP|CONTENTS_MONSTERCLIP) )
			side->contents |= CONTENTS_DETAIL;
		if (fulldetail)
			side->contents &= ~CONTENTS_DETAIL;
		if (!(side->contents & ((LAST_VISIBLE_CONTENTS-1) 
			| CONTENTS_PLAYERCLIP|CONTENTS_MONSTERCLIP|CONTENTS_MIST)  ) )
			side->contents |= CONTENTS_SOLID;

		// hints and skips are never detail, and have no content
		if (side->surf & (SURF_HINT|SURF_SKIP) )
		{
			side->contents = 0;
			side->surf &= ~CONTENTS_DETAIL;
		}

		//ME: get a plane for this side
		bspplane = &sin_dplanes[bspbrushside->planenum];
		planenum = FUNC3(bspplane->normal, bspplane->dist);
		//
		// see if the plane has been used already
		//
		//ME: this really shouldn't happen!!!
		//ME: otherwise the bsp file is corrupted??
		//ME: still it seems to happen, maybe Johny Boy's
		//ME: brush bevel adding is crappy ?
		for (k = 0; k < b->numsides; k++)
		{
			s2 = b->original_sides + k;
			if (s2->planenum == planenum)
			{
				FUNC4("Entity %i, Brush %i: duplicate plane\n"
					, b->entitynum, b->brushnum);
				break;
			}
			if ( s2->planenum == (planenum^1) )
			{
				FUNC4("Entity %i, Brush %i: mirrored plane\n"
					, b->entitynum, b->brushnum);
				break;
			}
		}
		if (k != b->numsides)
			continue;		// duplicated

		//
		// keep this side
		//
		//ME: reset pointer to side, why? hell I dunno (pointer is set above already)
		side = b->original_sides + b->numsides;
		//ME: store the plane number
		side->planenum = planenum;
		//ME: texinfo is already stored when bsp is loaded
		//NOTE: check for TEXINFO_NODE, otherwise crash in Sin_BrushContents
		if (bspbrushside->texinfo < 0) side->texinfo = 0;
		else side->texinfo = bspbrushside->texinfo;

		// save the td off in case there is an origin brush and we
		// have to recalculate the texinfo
		// ME: don't need to recalculate because it's already done
		//     (for non-world entities) in the BSP file
//		side_brushtextures[nummapbrushsides] = td;

		nummapbrushsides++;
		b->numsides++;
	} //end for

	// get the content for the entire brush
	b->contents = bspbrush->contents;
	FUNC7(b);

	if (FUNC1(b))
	{
		c_squattbrushes++;
		b->numsides = 0;
		return;
	} //end if

	//if we're creating AAS
	if (create_aas)
	{
		//create the AAS brushes from this brush, don't add brush bevels
		FUNC0(b, mapent, false);
		return;
	} //end if

	// allow detail brushes to be removed 
	if (nodetail && (b->contents & CONTENTS_DETAIL) )
	{
		b->numsides = 0;
		return;
	} //end if

	// allow water brushes to be removed
	if (nowater && (b->contents & (CONTENTS_LAVA | CONTENTS_SLIME | CONTENTS_WATER)) )
	{
		b->numsides = 0;
		return;
	} //end if

	// create windings for sides and bounds for brush
	FUNC5(b);

	//mark brushes without winding or with a tiny window as bevels
	FUNC6(b);

	// brushes that will not be visible at all will never be
	// used as bsp splitters
	if (b->contents & (CONTENTS_PLAYERCLIP|CONTENTS_MONSTERCLIP) )
	{
			c_clipbrushes++;
		for (i = 0; i < b->numsides; i++)
			b->original_sides[i].texinfo = TEXINFO_NODE;
	} //end for

	//
	// origin brushes are removed, but they set
	// the rotation origin for the rest of the brushes
	// in the entity.  After the entire entity is parsed,
	// the planenums and texinfos will be adjusted for
	// the origin brush
	//
	//ME: not needed because the entities in the BSP file already
	//    have an origin set
//	if (b->contents & CONTENTS_ORIGIN)
//	{
//		char	string[32];
//		vec3_t	origin;
//
//		if (num_entities == 1)
//		{
//			Error ("Entity %i, Brush %i: origin brushes not allowed in world"
//				, b->entitynum, b->brushnum);
//			return;
//		}
//
//		VectorAdd (b->mins, b->maxs, origin);
//		VectorScale (origin, 0.5, origin);
//
//		sprintf (string, "%i %i %i", (int)origin[0], (int)origin[1], (int)origin[2]);
//		SetKeyValue (&entities[b->entitynum], "origin", string);
//
//		VectorCopy (origin, entities[b->entitynum].origin);
//
//		// don't keep this brush
//		b->numsides = 0;
//
//		return;
//	}

	//ME: the bsp brushes already have bevels, so we won't try to
	//    add them again (especially since Johny Boy's bevel adding might
	//    be crappy)
//	AddBrushBevels(b);

	nummapbrushes++;
	mapent->numbrushes++;
}