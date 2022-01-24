#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {int* awardsEarned; int* awardsLevels; } ;

/* Variables and functions */
 int AWARD_ACCURACY ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int) ; 
 int /*<<< orphan*/  UI_CENTER ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  color_yellow ; 
 int* medalLocations ; 
 TYPE_1__ postgameMenuInfo ; 
 int /*<<< orphan*/ * ui_medalPicNames ; 

__attribute__((used)) static void FUNC3( int max ) {
	int		n;
	int		medal;
	int		amount;
	int		x, y;
	char	buf[16];

	for( n = 0; n < max; n++ ) {
		x = medalLocations[n];
		y = 64;
		medal = postgameMenuInfo.awardsEarned[n];
		amount = postgameMenuInfo.awardsLevels[n];

		FUNC1( x, y, 48, 48, ui_medalPicNames[medal] );

		if( medal == AWARD_ACCURACY ) {
			FUNC0( buf, sizeof(buf), "%i%%", amount );
		}
		else {
			if( amount == 1 ) {
				continue;
			}
			FUNC0( buf, sizeof(buf), "%i", amount );
		}

		FUNC2( x + 24, y + 52, buf, UI_CENTER, color_yellow );
	}
}