#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_3__ {scalar_t__ type; float* plane; int* children; } ;
typedef  TYPE_1__ traceNode_t ;

/* Variables and functions */
 float FUNC0 (int /*<<< orphan*/ ,float*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int numTraceNodes ; 
 TYPE_1__* traceNodes ; 

__attribute__((used)) static int FUNC2( vec3_t pt, int nodeNum ){
	float dot;
	traceNode_t     *node;


	if ( nodeNum < 0 || nodeNum >= numTraceNodes ) {
		return -1;
	}

	node = &traceNodes[ nodeNum ];

	if ( node->type >= 0 ) {
		dot = FUNC0( pt, node->plane ) - node->plane[ 3 ];
		if ( dot > -0.001f ) {
			FUNC2( pt, node->children[ 0 ] );
		}
		if ( dot < 0.001f ) {
			FUNC2( pt, node->children[ 1 ] );
		}
		return -1;
	}

	FUNC1( "%d ", nodeNum );

	return nodeNum;
}