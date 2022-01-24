#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int width; int height; int /*<<< orphan*/ * verts; } ;
typedef  TYPE_1__ mesh_t ;
typedef  int /*<<< orphan*/  bspDrawVert_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 void* FUNC1 (int) ; 

mesh_t *FUNC2( mesh_t *in ) {
	int w, h;
	mesh_t      *out;

	out = FUNC1( sizeof( *out ) );
	out->width = in->height;
	out->height = in->width;
	out->verts = FUNC1( out->width * out->height * sizeof( bspDrawVert_t ) );

	for ( h = 0 ; h < in->height ; h++ ) {
		for ( w = 0 ; w < in->width ; w++ ) {
			out->verts[ w * in->height + h ] = in->verts[ h * in->width + w ];
		}
	}

	FUNC0( in );

	return out;
}