#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  float* picoVec3_t ;
struct TYPE_15__ {float** member_0; size_t* member_1; } ;
typedef  TYPE_2__ picoSmoothVertices_t ;
typedef  size_t picoIndex_t ;
struct TYPE_14__ {size_t* data; } ;
struct TYPE_16__ {TYPE_1__ indices; } ;
typedef  TYPE_3__ UniqueIndices ;
struct TYPE_17__ {size_t* data; size_t* last; } ;
typedef  TYPE_4__ IndexArray ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 size_t FUNC2 (TYPE_3__*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,size_t) ; 
 size_t FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (float*,float*,float*) ; 
 int /*<<< orphan*/  FUNC6 (float*,float*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,size_t) ; 
 int /*<<< orphan*/  lessSmoothVertex ; 

void FUNC10(picoVec3_t* xyz, picoIndex_t* smoothingGroups, picoVec3_t* normals, picoIndex_t numVertices) {
	UniqueIndices vertices;
	IndexArray indices;
	picoSmoothVertices_t smoothVertices = { xyz, smoothingGroups };
	FUNC1(&vertices, lessSmoothVertex, &smoothVertices);
	FUNC3(&vertices, numVertices);
	FUNC9(&indices, numVertices);

	{
		picoIndex_t i = 0;
		for (; i < numVertices; ++i)
		{
			size_t size = FUNC4(&vertices);
			picoIndex_t index = FUNC2(&vertices, i);
			if ((size_t)index != size) {
				float* normal = normals[vertices.indices.data[index]];
				FUNC5(normal, normals[i], normal);
			}
			FUNC8(&indices, index);
		}
	}

	{
		picoIndex_t maxIndex = 0;
		picoIndex_t* i = indices.data;
		for (; i != indices.last; ++i)
		{
			if (*i <= maxIndex) {
				FUNC6(normals[vertices.indices.data[*i]], normals[i - indices.data]);
			}
			else
			{
				maxIndex = *i;
			}
		}
	}

	FUNC0(&vertices);
	FUNC7(&indices);
}