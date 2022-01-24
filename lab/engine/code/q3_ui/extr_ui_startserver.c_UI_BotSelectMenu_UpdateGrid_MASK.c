#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
struct TYPE_19__ {int /*<<< orphan*/  flags; } ;
struct TYPE_20__ {TYPE_8__ generic; } ;
struct TYPE_17__ {int /*<<< orphan*/  flags; } ;
struct TYPE_18__ {TYPE_6__ generic; } ;
struct TYPE_15__ {int /*<<< orphan*/  flags; } ;
struct TYPE_16__ {TYPE_4__ generic; } ;
struct TYPE_13__ {int /*<<< orphan*/  flags; int /*<<< orphan*/ * name; } ;
struct TYPE_14__ {TYPE_2__ generic; scalar_t__ shader; } ;
struct TYPE_12__ {int /*<<< orphan*/  color; } ;
struct TYPE_11__ {int modelpage; int numBots; int selectedmodel; int numpages; TYPE_9__ right; TYPE_7__ left; TYPE_5__* picbuttons; TYPE_3__* pics; scalar_t__** botnames; TYPE_1__* picnames; int /*<<< orphan*/ ** boticons; int /*<<< orphan*/ * sortedBotNums; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 int MAX_MODELSPERPAGE ; 
 int /*<<< orphan*/  MAX_QPATH ; 
 int PLAYERGRID_COLS ; 
 int PLAYERGRID_ROWS ; 
 int /*<<< orphan*/  QMF_HIGHLIGHT ; 
 int /*<<< orphan*/  QMF_INACTIVE ; 
 int /*<<< orphan*/  QMF_PULSEIFFOCUS ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_10__ botSelectInfo ; 
 int /*<<< orphan*/  color_blue ; 
 int /*<<< orphan*/  color_red ; 

__attribute__((used)) static void FUNC6( void ) {
	const char	*info;
	int			i;
    int			j;

	j = botSelectInfo.modelpage * MAX_MODELSPERPAGE;
	for( i = 0; i < (PLAYERGRID_ROWS * PLAYERGRID_COLS); i++, j++) {
		if( j < botSelectInfo.numBots ) { 
			info = FUNC5( botSelectInfo.sortedBotNums[j] );
			FUNC4( FUNC1( info, "model" ), botSelectInfo.boticons[i], MAX_QPATH );
			FUNC3( botSelectInfo.botnames[i], FUNC1( info, "name" ), 16 );
			FUNC2( botSelectInfo.botnames[i] );
 			botSelectInfo.pics[i].generic.name = botSelectInfo.boticons[i];
			if( FUNC0( botSelectInfo.botnames[i] ) ) {
				botSelectInfo.picnames[i].color = color_red;
			}
			else {
				botSelectInfo.picnames[i].color = color_blue;
			}
			botSelectInfo.picbuttons[i].generic.flags &= ~QMF_INACTIVE;
		}
		else {
			// dead slot
 			botSelectInfo.pics[i].generic.name         = NULL;
			botSelectInfo.picbuttons[i].generic.flags |= QMF_INACTIVE;
			botSelectInfo.botnames[i][0] = 0;
		}

 		botSelectInfo.pics[i].generic.flags       &= ~QMF_HIGHLIGHT;
 		botSelectInfo.pics[i].shader               = 0;
 		botSelectInfo.picbuttons[i].generic.flags |= QMF_PULSEIFFOCUS;
	}

	// set selected model
	i = botSelectInfo.selectedmodel % MAX_MODELSPERPAGE;
	botSelectInfo.pics[i].generic.flags |= QMF_HIGHLIGHT;
	botSelectInfo.picbuttons[i].generic.flags &= ~QMF_PULSEIFFOCUS;

	if( botSelectInfo.numpages > 1 ) {
		if( botSelectInfo.modelpage > 0 ) {
			botSelectInfo.left.generic.flags &= ~QMF_INACTIVE;
		}
		else {
			botSelectInfo.left.generic.flags |= QMF_INACTIVE;
		}

		if( botSelectInfo.modelpage < (botSelectInfo.numpages - 1) ) {
			botSelectInfo.right.generic.flags &= ~QMF_INACTIVE;
		}
		else {
			botSelectInfo.right.generic.flags |= QMF_INACTIVE;
		}
	}
	else {
		// hide left/right markers
		botSelectInfo.left.generic.flags |= QMF_INACTIVE;
		botSelectInfo.right.generic.flags |= QMF_INACTIVE;
	}
}