#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int numBSPSurfaces; size_t firstBSPSurface; } ;
typedef  TYPE_1__ bspModel_t ;
struct TYPE_8__ {size_t firstVert; scalar_t__ surfaceType; int patchHeight; int numVerts; int patchWidth; } ;
typedef  TYPE_2__ bspDrawSurface_t ;
struct TYPE_10__ {int /*<<< orphan*/  cellId; int /*<<< orphan*/ * rect; int /*<<< orphan*/  normal; int /*<<< orphan*/  model; } ;
struct TYPE_9__ {int /*<<< orphan*/  xyz; int /*<<< orphan*/  normal; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 size_t MAX_MAP_ADVERTISEMENTS ; 
 int MAX_QPATH ; 
 scalar_t__ MST_PATCH ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  SYS_VRB ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (char const*) ; 
 TYPE_6__* bspAds ; 
 TYPE_2__* bspDrawSurfaces ; 
 TYPE_4__* bspDrawVerts ; 
 TYPE_1__* bspModels ; 
 int /*<<< orphan*/ * entities ; 
 size_t numBSPAds ; 
 int numEntities ; 
 int FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static void FUNC9( void ) {
	int i;
	const char*         className;
	const char*         modelKey;
	int modelNum;
	bspModel_t*         adModel;
	bspDrawSurface_t*   adSurface;

	FUNC3( SYS_VRB, "--- ProcessAdvertisements ---\n" );

	for ( i = 0; i < numEntities; i++ ) {

		/* is an advertisement? */
		className = FUNC4( &entities[ i ], "classname" );

		if ( !FUNC2( "advertisement", className ) ) {

			modelKey = FUNC4( &entities[ i ], "model" );

			if ( FUNC7( modelKey ) > MAX_QPATH - 1 ) {
				FUNC0( "Model Key for entity exceeds ad struct string length." );
			}
			else {
				if ( numBSPAds < MAX_MAP_ADVERTISEMENTS ) {
					bspAds[numBSPAds].cellId = FUNC1( &entities[ i ], "cellId" );
					FUNC8( bspAds[numBSPAds].model, modelKey, sizeof( bspAds[numBSPAds].model ) );

					modelKey++;
					modelNum = FUNC6( modelKey );
					adModel = &bspModels[modelNum];

					if ( adModel->numBSPSurfaces != 1 ) {
						FUNC0( "Ad cell id %d has more than one surface.", bspAds[numBSPAds].cellId );
					}

					adSurface = &bspDrawSurfaces[adModel->firstBSPSurface];

					// store the normal for use at run time.. all ad verts are assumed to
					// have identical normals (because they should be a simple rectangle)
					// so just use the first vert's normal
					FUNC5( bspDrawVerts[adSurface->firstVert].normal, bspAds[numBSPAds].normal );

					// store the ad quad for quick use at run time
					if ( adSurface->surfaceType == MST_PATCH ) {
						int v0 = adSurface->firstVert + adSurface->patchHeight - 1;
						int v1 = adSurface->firstVert + adSurface->numVerts - 1;
						int v2 = adSurface->firstVert + adSurface->numVerts - adSurface->patchWidth;
						int v3 = adSurface->firstVert;
						FUNC5( bspDrawVerts[v0].xyz, bspAds[numBSPAds].rect[0] );
						FUNC5( bspDrawVerts[v1].xyz, bspAds[numBSPAds].rect[1] );
						FUNC5( bspDrawVerts[v2].xyz, bspAds[numBSPAds].rect[2] );
						FUNC5( bspDrawVerts[v3].xyz, bspAds[numBSPAds].rect[3] );
					}
					else {
						FUNC0( "Ad cell %d has an unsupported Ad Surface type.", bspAds[numBSPAds].cellId );
					}

					numBSPAds++;
				}
				else {
					FUNC0( "Maximum number of map advertisements exceeded." );
				}
			}
		}
	}

	FUNC3( SYS_VRB, "%9d in-game advertisements\n", numBSPAds );
}