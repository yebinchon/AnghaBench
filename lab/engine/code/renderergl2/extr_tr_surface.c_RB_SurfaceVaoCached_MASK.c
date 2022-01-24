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
typedef  int /*<<< orphan*/  srfVert_t ;
typedef  void* qboolean ;
typedef  int /*<<< orphan*/  glIndex_t ;
struct TYPE_5__ {int /*<<< orphan*/  isPortal; int /*<<< orphan*/  isSky; } ;
struct TYPE_4__ {int dlightBits; int pshadowBits; int numIndexes; void* useCacheVao; void* useInternalVao; scalar_t__ numVertexes; int /*<<< orphan*/  cubemapIndex; int /*<<< orphan*/  fogNum; TYPE_2__* shader; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (void**,void**,void**,int,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 void* qfalse ; 
 void* qtrue ; 
 TYPE_1__ tess ; 

__attribute__((used)) static qboolean FUNC9(int numVerts, srfVert_t *verts, int numIndexes, glIndex_t *indexes, int dlightBits, int pshadowBits)
{
	qboolean recycleVertexBuffer = qfalse;
	qboolean recycleIndexBuffer = qfalse;
	qboolean endSurface = qfalse;

	if (!(!FUNC2(tess.shader) && !tess.shader->isSky && !tess.shader->isPortal))
		return qfalse;

	if (!numIndexes || !numVerts)
		return qfalse;

	FUNC4();

	tess.dlightBits |= dlightBits;
	tess.pshadowBits |= pshadowBits;

	FUNC5(&endSurface, &recycleVertexBuffer, &recycleIndexBuffer, numVerts, numIndexes);

	if (endSurface)
	{
		FUNC1();
		FUNC0(tess.shader, tess.fogNum, tess.cubemapIndex);
	}

	if (recycleVertexBuffer)
		FUNC8();

	if (recycleIndexBuffer)
		FUNC7();

	if (!tess.numVertexes)
		FUNC6();

	FUNC3(verts, numVerts, indexes, numIndexes);

	tess.numIndexes += numIndexes;
	tess.numVertexes += numVerts;
	tess.useInternalVao = qfalse;
	tess.useCacheVao = qtrue;

	return qtrue;
}