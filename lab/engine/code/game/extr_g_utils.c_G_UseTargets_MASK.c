#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  inuse; int /*<<< orphan*/  (* use ) (TYPE_2__*,TYPE_2__*,TYPE_2__*) ;int /*<<< orphan*/  target; TYPE_1__* client; int /*<<< orphan*/  id; scalar_t__ targetShaderNewName; scalar_t__ targetShaderName; } ;
typedef  TYPE_2__ gentity_t ;
struct TYPE_13__ {double time; } ;
struct TYPE_11__ {int /*<<< orphan*/  ps; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,float) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  CS_SHADERSTATE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_6__ level ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  targetname ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC9( gentity_t *ent, gentity_t *activator ) {
	gentity_t		*t;
	
	if ( !ent ) {
		return;
	}

	if (ent->targetShaderName && ent->targetShaderNewName) {
		float f = level.time * 0.001;
		FUNC0(ent->targetShaderName, ent->targetShaderNewName, f);
		FUNC8(CS_SHADERSTATE, FUNC1());
	}

	if ( !ent->target ) {
		return;
	}

	if ( activator->client &&
			!FUNC5( ent->id, ent->target, &activator->client->ps ) ) {
		return;
	}

	if ( activator->client &&
			FUNC6( ent->id, ent->target, &activator->client->ps ) ) {
		return;
	}

	t = NULL;
	while ( (t = FUNC3 (t, FUNC2(targetname), ent->target)) != NULL ) {
		if ( t == ent ) {
			FUNC4 ("WARNING: Entity used itself.\n");
		} else {
			if ( t->use ) {
				t->use (t, ent, activator);
			}
		}
		if ( !ent->inuse ) {
			FUNC4("entity was removed while using targets\n");
			return;
		}
	}
}