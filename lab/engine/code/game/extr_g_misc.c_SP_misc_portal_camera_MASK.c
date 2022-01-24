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
struct TYPE_7__ {float clientNum; } ;
struct TYPE_6__ {int /*<<< orphan*/  maxs; int /*<<< orphan*/  mins; } ;
struct TYPE_8__ {TYPE_2__ s; TYPE_1__ r; } ;
typedef  TYPE_3__ gentity_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,float*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 

void FUNC3(gentity_t *ent) {
	float	roll;

	FUNC1( ent->r.mins );
	FUNC1( ent->r.maxs );
	FUNC2 (ent);

	FUNC0( "roll", "0", &roll );

	ent->s.clientNum = roll/360.0 * 256;
}