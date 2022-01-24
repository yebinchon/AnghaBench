#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  color; int /*<<< orphan*/  st; int /*<<< orphan*/  normal; int /*<<< orphan*/  xyz; } ;
struct TYPE_7__ {struct TYPE_7__* next; int /*<<< orphan*/ * data; int /*<<< orphan*/  index; TYPE_1__ vcd; } ;
typedef  TYPE_2__ picoVertexCombinationHash_t ;
typedef  int /*<<< orphan*/ * picoVec3_t ;
typedef  int /*<<< orphan*/  picoIndex_t ;
typedef  int /*<<< orphan*/ * picoColor_t ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

picoVertexCombinationHash_t *FUNC5( picoVertexCombinationHash_t **hashTable, picoVec3_t xyz, picoVec3_t normal, picoVec3_t st, picoColor_t color, picoIndex_t index ){
	unsigned int hash;
	picoVertexCombinationHash_t *vertexCombinationHash;

	/* dumy check */
	if ( hashTable == NULL || xyz == NULL || normal == NULL || st == NULL || color == NULL ) {
		return NULL;
	}

	vertexCombinationHash = FUNC1( sizeof( picoVertexCombinationHash_t ) );

	if ( !vertexCombinationHash ) {
		return NULL;
	}

	hash = FUNC0( xyz );

	FUNC3( xyz, vertexCombinationHash->vcd.xyz );
	FUNC3( normal, vertexCombinationHash->vcd.normal );
	FUNC4( st, vertexCombinationHash->vcd.st );
	FUNC2( color, vertexCombinationHash->vcd.color );
	vertexCombinationHash->index = index;
	vertexCombinationHash->data = NULL;
	vertexCombinationHash->next = hashTable[ hash ];
	hashTable[ hash ] = vertexCombinationHash;

	return vertexCombinationHash;
}