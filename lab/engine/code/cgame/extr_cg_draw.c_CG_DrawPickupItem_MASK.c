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
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  pickup_name; } ;
struct TYPE_9__ {int itemPickup; int /*<<< orphan*/  itemPickupTime; TYPE_2__* snap; } ;
struct TYPE_8__ {int /*<<< orphan*/  icon; } ;
struct TYPE_6__ {scalar_t__* stats; } ;
struct TYPE_7__ {TYPE_1__ ps; } ;

/* Variables and functions */
 int BIGCHAR_HEIGHT ; 
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int,int /*<<< orphan*/ ) ; 
 float* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int ICON_SIZE ; 
 size_t STAT_HEALTH ; 
 TYPE_5__* bg_itemlist ; 
 TYPE_4__ cg ; 
 TYPE_3__* cg_items ; 
 int /*<<< orphan*/  FUNC4 (float*) ; 

__attribute__((used)) static int FUNC5( int y ) {
	int		value;
	float	*fadeColor;

	if ( cg.snap->ps.stats[STAT_HEALTH] <= 0 ) {
		return y;
	}

	y -= ICON_SIZE;

	value = cg.itemPickup;
	if ( value ) {
		fadeColor = FUNC2( cg.itemPickupTime, 3000 );
		if ( fadeColor ) {
			FUNC3( value );
			FUNC4( fadeColor );
			FUNC1( 8, y, ICON_SIZE, ICON_SIZE, cg_items[ value ].icon );
			FUNC0( ICON_SIZE + 16, y + (ICON_SIZE/2 - BIGCHAR_HEIGHT/2), bg_itemlist[ value ].pickup_name, fadeColor[0] );
			FUNC4( NULL );
		}
	}
	
	return y;
}