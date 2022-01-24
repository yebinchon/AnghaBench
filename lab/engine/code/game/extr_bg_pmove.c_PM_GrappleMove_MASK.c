#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_6__ {TYPE_1__* ps; } ;
struct TYPE_5__ {int /*<<< orphan*/  groundPlane; int /*<<< orphan*/  forward; } ;
struct TYPE_4__ {int /*<<< orphan*/  velocity; int /*<<< orphan*/  origin; int /*<<< orphan*/  grapplePoint; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 float FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* pm ; 
 TYPE_2__ pml ; 
 int /*<<< orphan*/  qfalse ; 

__attribute__((used)) static void FUNC6( void ) {
	vec3_t vel, v;
	float vlen;

	FUNC4(pml.forward, -16, v);
	FUNC0(pm->ps->grapplePoint, v, v);
	FUNC5(v, pm->ps->origin, vel);
	vlen = FUNC2(vel);
	FUNC3( vel );

	if (vlen <= 100)
		FUNC4(vel, 10 * vlen, vel);
	else
		FUNC4(vel, 800, vel);

	FUNC1(vel, pm->ps->velocity);

	pml.groundPlane = qfalse;
}