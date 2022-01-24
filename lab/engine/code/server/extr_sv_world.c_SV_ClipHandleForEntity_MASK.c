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
struct TYPE_6__ {int svFlags; int /*<<< orphan*/  maxs; int /*<<< orphan*/  mins; scalar_t__ bmodel; } ;
struct TYPE_5__ {int /*<<< orphan*/  modelindex; } ;
struct TYPE_7__ {TYPE_2__ r; TYPE_1__ s; } ;
typedef  TYPE_3__ sharedEntity_t ;
typedef  int /*<<< orphan*/  clipHandle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int SVF_CAPSULE ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 

clipHandle_t FUNC2( const sharedEntity_t *ent ) {
	if ( ent->r.bmodel ) {
		// explicit hulls in the BSP model
		return FUNC0( ent->s.modelindex );
	}
	if ( ent->r.svFlags & SVF_CAPSULE ) {
		// create a temp capsule from bounding box sizes
		return FUNC1( ent->r.mins, ent->r.maxs, qtrue );
	}

	// create a temp tree from bounding box sizes
	return FUNC1( ent->r.mins, ent->r.maxs, qfalse );
}