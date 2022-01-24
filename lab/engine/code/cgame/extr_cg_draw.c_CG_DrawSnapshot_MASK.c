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
struct TYPE_6__ {int /*<<< orphan*/  latestSnapshotNum; TYPE_1__* snap; } ;
struct TYPE_5__ {int /*<<< orphan*/  serverCommandSequence; } ;
struct TYPE_4__ {int /*<<< orphan*/  serverTime; } ;

/* Variables and functions */
 float BIGCHAR_HEIGHT ; 
 int BIGCHAR_WIDTH ; 
 int /*<<< orphan*/  FUNC0 (int,float,char*,float) ; 
 int FUNC1 (char*) ; 
 TYPE_3__ cg ; 
 TYPE_2__ cgs ; 
 char* FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static float FUNC3( float y ) {
	char		*s;
	int			w;

	s = FUNC2( "time:%i snap:%i cmd:%i", cg.snap->serverTime, 
		cg.latestSnapshotNum, cgs.serverCommandSequence );
	w = FUNC1( s ) * BIGCHAR_WIDTH;

	FUNC0( 635 - w, y + 2, s, 1.0F);

	return y + BIGCHAR_HEIGHT + 4;
}