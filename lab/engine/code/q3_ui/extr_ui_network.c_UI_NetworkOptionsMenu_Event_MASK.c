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
struct TYPE_5__ {int id; } ;
typedef  TYPE_2__ menucommon_s ;
struct TYPE_4__ {int curvalue; } ;
struct TYPE_6__ {TYPE_1__ rate; } ;

/* Variables and functions */
#define  ID_BACK 133 
#define  ID_DISPLAY 132 
#define  ID_GRAPHICS 131 
#define  ID_NETWORK 130 
#define  ID_RATE 129 
#define  ID_SOUND 128 
 int QM_ACTIVATED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_3__ networkOptionsInfo ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

__attribute__((used)) static void FUNC5( void* ptr, int event ) {
	if( event != QM_ACTIVATED ) {
		return;
	}

	switch( ((menucommon_s*)ptr)->id ) {
	case ID_GRAPHICS:
		FUNC2();
		FUNC1();
		break;

	case ID_DISPLAY:
		FUNC2();
		FUNC0();
		break;

	case ID_SOUND:
		FUNC2();
		FUNC3();
		break;

	case ID_NETWORK:
		break;

	case ID_RATE:
		if( networkOptionsInfo.rate.curvalue == 0 ) {
			FUNC4( "rate", 2500 );
		}
		else if( networkOptionsInfo.rate.curvalue == 1 ) {
			FUNC4( "rate", 3000 );
		}
		else if( networkOptionsInfo.rate.curvalue == 2 ) {
			FUNC4( "rate", 4000 );
		}
		else if( networkOptionsInfo.rate.curvalue == 3 ) {
			FUNC4( "rate", 5000 );
		}
		else if( networkOptionsInfo.rate.curvalue == 4 ) {
			FUNC4( "rate", 25000 );
		}
		break;

	case ID_BACK:
		FUNC2();
		break;
	}
}