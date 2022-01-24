#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int time; } ;
struct TYPE_3__ {int levelStartTime; } ;

/* Variables and functions */
 float BIGCHAR_HEIGHT ; 
 int BIGCHAR_WIDTH ; 
 int /*<<< orphan*/  FUNC0 (int,float,char*,float) ; 
 int FUNC1 (char*) ; 
 TYPE_2__ cg ; 
 TYPE_1__ cgs ; 
 char* FUNC2 (char*,int,int,int) ; 

__attribute__((used)) static float FUNC3( float y ) {
	char		*s;
	int			w;
	int			mins, seconds, tens;
	int			msec;

	msec = cg.time - cgs.levelStartTime;

	seconds = msec / 1000;
	mins = seconds / 60;
	seconds -= mins * 60;
	tens = seconds / 10;
	seconds -= tens * 10;

	s = FUNC2( "%i:%i%i", mins, tens, seconds );
	w = FUNC1( s ) * BIGCHAR_WIDTH;

	FUNC0( 635 - w, y + 2, s, 1.0F);

	return y + BIGCHAR_HEIGHT + 4;
}