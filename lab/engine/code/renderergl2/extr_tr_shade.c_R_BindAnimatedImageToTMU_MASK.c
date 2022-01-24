#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {size_t videoMapHandle; int numImageAnimations; size_t imageAnimationSpeed; int /*<<< orphan*/ * image; scalar_t__ isVideoMap; } ;
typedef  TYPE_1__ textureBundle_t ;
typedef  size_t int64_t ;
struct TYPE_9__ {int /*<<< orphan*/  (* CIN_UploadCinematic ) (size_t) ;int /*<<< orphan*/  (* CIN_RunCinematic ) (size_t) ;} ;
struct TYPE_8__ {size_t shaderTime; } ;
struct TYPE_7__ {int /*<<< orphan*/ * scratchImage; } ;

/* Variables and functions */
 size_t FUNCTABLE_SIZE ; 
 size_t FUNCTABLE_SIZE2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 TYPE_4__ ri ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 TYPE_3__ tess ; 
 TYPE_2__ tr ; 

__attribute__((used)) static void FUNC3( textureBundle_t *bundle, int tmu ) {
	int64_t index;

	if ( bundle->isVideoMap ) {
		ri.CIN_RunCinematic(bundle->videoMapHandle);
		ri.CIN_UploadCinematic(bundle->videoMapHandle);
		FUNC0(tr.scratchImage[bundle->videoMapHandle], tmu);
		return;
	}

	if ( bundle->numImageAnimations <= 1 ) {
		FUNC0( bundle->image[0], tmu);
		return;
	}

	// it is necessary to do this messy calc to make sure animations line up
	// exactly with waveforms of the same frequency
	index = tess.shaderTime * bundle->imageAnimationSpeed * FUNCTABLE_SIZE;
	index >>= FUNCTABLE_SIZE2;

	if ( index < 0 ) {
		index = 0;	// may happen with shader time offsets
	}

	// Windows x86 doesn't load renderer DLL with 64 bit modulus
	//index %= bundle->numImageAnimations;
	while ( index >= bundle->numImageAnimations ) {
		index -= bundle->numImageAnimations;
	}

	FUNC0( bundle->image[ index ], tmu );
}