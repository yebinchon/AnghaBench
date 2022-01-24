#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int numImageAnimations; size_t imageAnimationSpeed; int /*<<< orphan*/ * image; int /*<<< orphan*/  videoMapHandle; scalar_t__ isVideoMap; } ;
typedef  TYPE_1__ textureBundle_t ;
typedef  size_t int64_t ;
struct TYPE_7__ {int /*<<< orphan*/  (* CIN_UploadCinematic ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* CIN_RunCinematic ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_6__ {size_t shaderTime; } ;

/* Variables and functions */
 size_t FUNCTABLE_SIZE ; 
 size_t FUNCTABLE_SIZE2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__ ri ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__ tess ; 

__attribute__((used)) static void FUNC3( textureBundle_t *bundle ) {
	int64_t index;

	if ( bundle->isVideoMap ) {
		ri.CIN_RunCinematic(bundle->videoMapHandle);
		ri.CIN_UploadCinematic(bundle->videoMapHandle);
		return;
	}

	if ( bundle->numImageAnimations <= 1 ) {
		FUNC0( bundle->image[0] );
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

	FUNC0( bundle->image[ index ] );
}