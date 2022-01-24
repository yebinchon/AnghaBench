#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ func; float base; int phase; int frequency; float amplitude; } ;
typedef  TYPE_1__ waveForm_t ;
struct TYPE_8__ {int shaderTime; } ;
struct TYPE_7__ {float identityLight; } ;

/* Variables and functions */
 float FUNC0 (TYPE_1__ const*) ; 
 scalar_t__ GF_NOISE ; 
 float FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_3__ tess ; 
 TYPE_2__ tr ; 

float FUNC2( const waveForm_t *wf )
{
	float glow;

	if ( wf->func == GF_NOISE ) {
		glow = wf->base + FUNC1( 0, 0, 0, ( tess.shaderTime + wf->phase ) * wf->frequency ) * wf->amplitude;
	} else {
		glow = FUNC0( wf ) * tr.identityLight;
	}
	
	if ( glow < 0 ) {
		glow = 0;
	}
	else if ( glow > 1 ) {
		glow = 1;
	}

	return glow;
}