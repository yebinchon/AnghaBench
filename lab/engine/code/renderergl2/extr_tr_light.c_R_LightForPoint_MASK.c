#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_7__ {int /*<<< orphan*/  origin; } ;
struct TYPE_8__ {int /*<<< orphan*/  lightDir; int /*<<< orphan*/  directedLight; int /*<<< orphan*/  ambientLight; TYPE_1__ e; } ;
typedef  TYPE_2__ trRefEntity_t ;
typedef  int /*<<< orphan*/  ent ;
struct TYPE_10__ {int /*<<< orphan*/ * lightGridData; } ;
struct TYPE_9__ {TYPE_5__* world; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int qfalse ; 
 int qtrue ; 
 TYPE_3__ tr ; 

int FUNC3( vec3_t point, vec3_t ambientLight, vec3_t directedLight, vec3_t lightDir )
{
	trRefEntity_t ent;
	
	if ( tr.world->lightGridData == NULL )
	  return qfalse;

	FUNC0(&ent, 0, sizeof(ent));
	FUNC2( point, ent.e.origin );
	FUNC1( &ent, tr.world );
	FUNC2(ent.ambientLight, ambientLight);
	FUNC2(ent.directedLight, directedLight);
	FUNC2(ent.lightDir, lightDir);

	return qtrue;
}