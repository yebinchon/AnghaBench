#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  aseSubMaterial_t ;
typedef  int /*<<< orphan*/  aseMaterial_t ;

/* Variables and functions */
 int /*<<< orphan*/  PICO_ERROR ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 

aseSubMaterial_t* FUNC2( aseMaterial_t* materials, int mtlIdParent, int subMtlId ){
	aseSubMaterial_t* subMtl = FUNC0( materials, mtlIdParent, subMtlId );
	if ( subMtl != NULL ) {
		return subMtl;
	}

	/* ydnar: trying default submaterial */
	subMtl = FUNC0( materials, mtlIdParent, 0 );
	if ( subMtl != NULL ) {
		return subMtl;
	}

	FUNC1( PICO_ERROR, "Could not find material/submaterial for id %d/%d\n", mtlIdParent, subMtlId );
	return NULL;
}