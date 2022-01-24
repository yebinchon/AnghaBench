#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  (* spawn ) (TYPE_2__*) ;scalar_t__ name; } ;
typedef  TYPE_1__ spawn_t ;
typedef  int /*<<< orphan*/  qboolean ;
typedef  int /*<<< orphan*/  gitem_t ;
struct TYPE_8__ {int /*<<< orphan*/  classname; } ;
typedef  TYPE_2__ gentity_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 TYPE_1__* spawns ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

qboolean FUNC5( gentity_t *ent ) {
	spawn_t	*s;
	gitem_t	*item;

	if ( !ent->classname ) {
		FUNC1 ("G_CallSpawn: NULL classname\n");
		return qfalse;
	}

	// check item spawn functions
	item = FUNC0( ent->classname );
	if ( item ) {
		FUNC2( ent, item );
		return qtrue;
	}

	// check normal spawn functions
	for ( s=spawns ; s->name ; s++ ) {
		if ( !FUNC3(s->name, ent->classname) ) {
			// found it
			s->spawn(ent);
			return qtrue;
		}
	}
	FUNC1 ("%s doesn't have a spawn function\n", ent->classname);
	return qfalse;
}