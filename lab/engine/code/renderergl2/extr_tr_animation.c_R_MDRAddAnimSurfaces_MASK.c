#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_36__   TYPE_9__ ;
typedef  struct TYPE_35__   TYPE_8__ ;
typedef  struct TYPE_34__   TYPE_7__ ;
typedef  struct TYPE_33__   TYPE_6__ ;
typedef  struct TYPE_32__   TYPE_5__ ;
typedef  struct TYPE_31__   TYPE_4__ ;
typedef  struct TYPE_30__   TYPE_3__ ;
typedef  struct TYPE_29__   TYPE_2__ ;
typedef  struct TYPE_28__   TYPE_1__ ;
typedef  struct TYPE_27__   TYPE_13__ ;
typedef  struct TYPE_26__   TYPE_12__ ;
typedef  struct TYPE_25__   TYPE_11__ ;
typedef  struct TYPE_24__   TYPE_10__ ;

/* Type definitions */
struct TYPE_31__ {int renderfx; scalar_t__ customShader; scalar_t__ customSkin; int /*<<< orphan*/  origin; int /*<<< orphan*/  oldframe; int /*<<< orphan*/  frame; } ;
struct TYPE_32__ {TYPE_4__ e; } ;
typedef  TYPE_5__ trRefEntity_t ;
struct TYPE_33__ {int numSurfaces; TYPE_3__* surfaces; } ;
typedef  TYPE_6__ skin_t ;
struct TYPE_34__ {scalar_t__ sort; } ;
typedef  TYPE_7__ shader_t ;
typedef  int qboolean ;
struct TYPE_35__ {scalar_t__ shaderIndex; int ofsEnd; int /*<<< orphan*/  name; } ;
typedef  TYPE_8__ mdrSurface_t ;
struct TYPE_36__ {int ofsEnd; int ofsSurfaces; int numSurfaces; } ;
typedef  TYPE_9__ mdrLOD_t ;
struct TYPE_24__ {int numLODs; int ofsLODs; int /*<<< orphan*/  numFrames; } ;
typedef  TYPE_10__ mdrHeader_t ;
typedef  int /*<<< orphan*/  byte ;
struct TYPE_30__ {TYPE_7__* shader; int /*<<< orphan*/  name; } ;
struct TYPE_29__ {int /*<<< orphan*/  name; scalar_t__ modelData; } ;
struct TYPE_28__ {int flags; scalar_t__ isPortal; } ;
struct TYPE_27__ {int integer; } ;
struct TYPE_26__ {int /*<<< orphan*/  (* Printf ) (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_25__ {scalar_t__ numSkins; TYPE_7__* projectionShadowShader; TYPE_7__* shadowShader; TYPE_7__* defaultShader; int /*<<< orphan*/  refdef; TYPE_2__* currentModel; TYPE_1__ viewParms; } ;

/* Variables and functions */
 int CULL_OUT ; 
 int /*<<< orphan*/  PRINT_DEVELOPER ; 
 int RF_DEPTHHACK ; 
 int RF_NOSHADOW ; 
 int RF_SHADOW_PLANE ; 
 int RF_THIRD_PERSON ; 
 int RF_WRAP_FRAMES ; 
 int /*<<< orphan*/  FUNC0 (void*,TYPE_7__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (TYPE_5__*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC3 (scalar_t__) ; 
 TYPE_6__* FUNC4 (scalar_t__) ; 
 int FUNC5 (TYPE_10__*,TYPE_5__*) ; 
 int FUNC6 (TYPE_10__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 scalar_t__ SS_OPAQUE ; 
 int VPF_DEPTHSHADOW ; 
 int VPF_SHADOWMAP ; 
 int /*<<< orphan*/  qfalse ; 
 TYPE_13__* r_shadows ; 
 TYPE_12__ ri ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_11__ tr ; 

void FUNC10( trRefEntity_t *ent ) {
	mdrHeader_t		*header;
	mdrSurface_t	*surface;
	mdrLOD_t		*lod;
	shader_t		*shader;
	skin_t		*skin;
	int				i, j;
	int				lodnum = 0;
	int				fogNum = 0;
	int				cull;
	int             cubemapIndex;
	qboolean	personalModel;

	header = (mdrHeader_t *) tr.currentModel->modelData;
	
	personalModel = (ent->e.renderfx & RF_THIRD_PERSON) && !(tr.viewParms.isPortal 
	                 || (tr.viewParms.flags & (VPF_SHADOWMAP | VPF_DEPTHSHADOW)));
	
	if ( ent->e.renderfx & RF_WRAP_FRAMES )
	{
		ent->e.frame %= header->numFrames;
		ent->e.oldframe %= header->numFrames;
	}	
	
	//
	// Validate the frames so there is no chance of a crash.
	// This will write directly into the entity structure, so
	// when the surfaces are rendered, they don't need to be
	// range checked again.
	//
	if ((ent->e.frame >= header->numFrames) 
		|| (ent->e.frame < 0)
		|| (ent->e.oldframe >= header->numFrames)
		|| (ent->e.oldframe < 0) )
	{
		ri.Printf( PRINT_DEVELOPER, "R_MDRAddAnimSurfaces: no such frame %d to %d for '%s'\n",
			   ent->e.oldframe, ent->e.frame, tr.currentModel->name );
		ent->e.frame = 0;
		ent->e.oldframe = 0;
	}

	//
	// cull the entire model if merged bounding box of both frames
	// is outside the view frustum.
	//
	cull = FUNC6 (header, ent);
	if ( cull == CULL_OUT ) {
		return;
	}	

	// figure out the current LOD of the model we're rendering, and set the lod pointer respectively.
	lodnum = FUNC1(ent);
	// check whether this model has as that many LODs at all. If not, try the closest thing we got.
	if(header->numLODs <= 0)
		return;
	if(header->numLODs <= lodnum)
		lodnum = header->numLODs - 1;

	lod = (mdrLOD_t *)( (byte *)header + header->ofsLODs);
	for(i = 0; i < lodnum; i++)
	{
		lod = (mdrLOD_t *) ((byte *) lod + lod->ofsEnd);
	}
	
	// set up lighting
	if ( !personalModel || r_shadows->integer > 1 )
	{
		FUNC7( &tr.refdef, ent );
	}

	// fogNum?
	fogNum = FUNC5( header, ent );

	cubemapIndex = FUNC2(ent->e.origin);

	surface = (mdrSurface_t *)( (byte *)lod + lod->ofsSurfaces );

	for ( i = 0 ; i < lod->numSurfaces ; i++ )
	{
		
		if(ent->e.customShader)
			shader = FUNC3(ent->e.customShader);
		else if(ent->e.customSkin > 0 && ent->e.customSkin < tr.numSkins)
		{
			skin = FUNC4(ent->e.customSkin);
			shader = tr.defaultShader;
			
			for(j = 0; j < skin->numSurfaces; j++)
			{
				if (!FUNC8(skin->surfaces[j].name, surface->name))
				{
					shader = skin->surfaces[j].shader;
					break;
				}
			}
		}
		else if(surface->shaderIndex > 0)
			shader = FUNC3( surface->shaderIndex );
		else
			shader = tr.defaultShader;

		// we will add shadows even if the main object isn't visible in the view

		// stencil shadows can't do personal models unless I polyhedron clip
		if ( !personalModel
		        && r_shadows->integer == 2
			&& fogNum == 0
			&& !(ent->e.renderfx & ( RF_NOSHADOW | RF_DEPTHHACK ) )
			&& shader->sort == SS_OPAQUE )
		{
			FUNC0( (void *)surface, tr.shadowShader, 0, qfalse, qfalse, 0 );
		}

		// projection shadows work fine with personal models
		if ( r_shadows->integer == 3
			&& fogNum == 0
			&& (ent->e.renderfx & RF_SHADOW_PLANE )
			&& shader->sort == SS_OPAQUE )
		{
			FUNC0( (void *)surface, tr.projectionShadowShader, 0, qfalse, qfalse, 0 );
		}

		if (!personalModel)
			FUNC0( (void *)surface, shader, fogNum, qfalse, qfalse, cubemapIndex );

		surface = (mdrSurface_t *)( (byte *)surface + surface->ofsEnd );
	}
}