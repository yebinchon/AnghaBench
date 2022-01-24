#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/ * lightGridData; } ;
typedef  TYPE_2__ world_t ;
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_8__ {int /*<<< orphan*/  origin; } ;
struct TYPE_10__ {int /*<<< orphan*/  lightDir; TYPE_1__ e; } ;
typedef  TYPE_3__ trRefEntity_t ;
typedef  int /*<<< orphan*/  ent ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 float FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int qfalse ; 
 int qtrue ; 

int FUNC4( vec3_t point, vec3_t lightDir, vec3_t normal, world_t *world )
{
	trRefEntity_t ent;
	
	if ( world->lightGridData == NULL )
	  return qfalse;

	FUNC0(&ent, 0, sizeof(ent));
	FUNC3( point, ent.e.origin );
	FUNC2( &ent, world );

	if (FUNC1(ent.lightDir, normal) > 0.2f)
		FUNC3(ent.lightDir, lightDir);
	else
		FUNC3(normal, lightDir);

	return qtrue;
}