#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_19__ {int /*<<< orphan*/  normal; } ;
struct TYPE_20__ {int entityNum; int surfaceFlags; TYPE_3__ plane; int /*<<< orphan*/  endpos; } ;
typedef  TYPE_4__ trace_t ;
struct TYPE_18__ {int number; int otherEntityNum; void* eventParm; int /*<<< orphan*/  weapon; int /*<<< orphan*/  origin2; } ;
struct TYPE_21__ {TYPE_2__ s; TYPE_1__* client; scalar_t__ takedamage; } ;
typedef  TYPE_5__ gentity_t ;
struct TYPE_22__ {scalar_t__ time; } ;
struct TYPE_17__ {scalar_t__ invulnerabilityTime; int /*<<< orphan*/  accuracy_hits; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int ENTITYNUM_NONE ; 
 int /*<<< orphan*/  EV_LIGHTNINGBOLT ; 
 int /*<<< orphan*/  EV_MISSILE_HIT ; 
 int /*<<< orphan*/  EV_MISSILE_MISS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,TYPE_5__*,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LIGHTNING_RANGE ; 
 scalar_t__ FUNC5 (TYPE_5__*,TYPE_5__*) ; 
 int /*<<< orphan*/  MASK_SHOT ; 
 int /*<<< orphan*/  MOD_LIGHTNING ; 
 int SURF_NOIMPACT ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  forward ; 
 TYPE_5__* g_entities ; 
 TYPE_7__ level ; 
 int /*<<< orphan*/  muzzle ; 
 int s_quadFactor ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void FUNC12( gentity_t *ent ) {
	trace_t		tr;
	vec3_t		end;
#ifdef MISSIONPACK
	vec3_t impactpoint, bouncedir;
#endif
	gentity_t	*traceEnt, *tent;
	int			damage, i, passent;

	damage = 8 * s_quadFactor;

	passent = ent->s.number;
	for (i = 0; i < 10; i++) {
		FUNC8( muzzle, LIGHTNING_RANGE, forward, end );

		FUNC11( &tr, muzzle, NULL, NULL, end, passent, MASK_SHOT );

#ifdef MISSIONPACK
		// if not the first trace (the lightning bounced of an invulnerability sphere)
		if (i) {
			// add bounced off lightning bolt temp entity
			// the first lightning bolt is a cgame only visual
			//
			tent = G_TempEntity( muzzle, EV_LIGHTNINGBOLT );
			VectorCopy( tr.endpos, end );
			SnapVector( end );
			VectorCopy( end, tent->s.origin2 );
		}
#endif
		if ( tr.entityNum == ENTITYNUM_NONE ) {
			return;
		}

		traceEnt = &g_entities[ tr.entityNum ];

		if ( traceEnt->takedamage) {
#ifdef MISSIONPACK
			if ( traceEnt->client && traceEnt->client->invulnerabilityTime > level.time ) {
				if (G_InvulnerabilityEffect( traceEnt, forward, tr.endpos, impactpoint, bouncedir )) {
					G_BounceProjectile( muzzle, impactpoint, bouncedir, end );
					VectorCopy( impactpoint, muzzle );
					VectorSubtract( end, impactpoint, forward );
					VectorNormalize(forward);
					// the player can hit him/herself with the bounced lightning
					passent = ENTITYNUM_NONE;
				}
				else {
					VectorCopy( tr.endpos, muzzle );
					passent = traceEnt->s.number;
				}
				continue;
			}
#endif
			if( FUNC5( traceEnt, ent ) ) {
				ent->client->accuracy_hits++;
			}
			FUNC2( traceEnt, ent, ent, forward, tr.endpos, damage, 0, MOD_LIGHTNING);
		}

		if ( traceEnt->takedamage && traceEnt->client ) {
			tent = FUNC4( tr.endpos, EV_MISSILE_HIT );
			tent->s.otherEntityNum = traceEnt->s.number;
			tent->s.eventParm = FUNC0( tr.plane.normal );
			tent->s.weapon = ent->s.weapon;
		} else if ( !( tr.surfaceFlags & SURF_NOIMPACT ) ) {
			tent = FUNC4( tr.endpos, EV_MISSILE_MISS );
			tent->s.eventParm = FUNC0( tr.plane.normal );
		}

		break;
	}
}