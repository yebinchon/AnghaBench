#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec4_t ;
typedef  int /*<<< orphan*/  vec2_t ;
struct TYPE_2__ {size_t numVertexes; int* indexes; scalar_t__ firstIndex; scalar_t__ numIndexes; int /*<<< orphan*/ * texCoords; int /*<<< orphan*/ * xyz; } ;

/* Variables and functions */
 int ATTR_POSITION ; 
 int ATTR_TEXCOORD ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ tess ; 

void FUNC5(vec4_t quadVerts[4], vec2_t texCoords[4])
{
	FUNC0("--- RB_InstantQuad2 ---\n");

	tess.numVertexes = 0;
	tess.numIndexes = 0;
	tess.firstIndex = 0;

	FUNC4(quadVerts[0], tess.xyz[tess.numVertexes]);
	FUNC3(texCoords[0], tess.texCoords[tess.numVertexes]);
	tess.numVertexes++;

	FUNC4(quadVerts[1], tess.xyz[tess.numVertexes]);
	FUNC3(texCoords[1], tess.texCoords[tess.numVertexes]);
	tess.numVertexes++;

	FUNC4(quadVerts[2], tess.xyz[tess.numVertexes]);
	FUNC3(texCoords[2], tess.texCoords[tess.numVertexes]);
	tess.numVertexes++;

	FUNC4(quadVerts[3], tess.xyz[tess.numVertexes]);
	FUNC3(texCoords[3], tess.texCoords[tess.numVertexes]);
	tess.numVertexes++;

	tess.indexes[tess.numIndexes++] = 0;
	tess.indexes[tess.numIndexes++] = 1;
	tess.indexes[tess.numIndexes++] = 2;
	tess.indexes[tess.numIndexes++] = 0;
	tess.indexes[tess.numIndexes++] = 2;
	tess.indexes[tess.numIndexes++] = 3;

	FUNC1(ATTR_POSITION | ATTR_TEXCOORD);

	FUNC2(tess.numIndexes, tess.firstIndex);

	tess.numIndexes = 0;
	tess.numVertexes = 0;
	tess.firstIndex = 0;
}