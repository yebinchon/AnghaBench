#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_3__ {int mode; } ;
typedef  TYPE_1__ PIA ;

/* Variables and functions */
 char FUNC0 (int,int) ; 
 char FUNC1 (int,int) ; 
 char FUNC2 () ; 
 int FUNC3 () ; 
 int FUNC4 () ; 
 char FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static void FUNC11( PIA *pi, char * buf, int count )

{	int  k, ph, a, b;

	switch (pi->mode) {

	case 0:	FUNC8(7); FUNC9(1); FUNC9(3); FUNC8(0xff);
		ph = 0;
		for(k=0;k<count;k++) {
			if (k == count-1) FUNC8(0xfd);
			FUNC9(6+ph); a = FUNC3();
			if (a & 8) b = a; 
			  else { FUNC9(4+ph); b = FUNC3(); }
			buf[k] = FUNC0(a,b);
			ph =  1 - ph;
		}
		FUNC8(0); FUNC9(4);
		break;

	case 1: FUNC8(0x47); FUNC9(1); FUNC9(5); FUNC8(0xff);
		ph = 0;
		for(k=0;k<count;k++) {
			if (k == count-1) FUNC8(0xfd); 
			FUNC9(4+ph);
			a = FUNC3(); b = FUNC4();
			buf[k] = FUNC1(a,b);
			ph = 1 - ph;
		}
		FUNC8(0); FUNC9(4);
		break;

	case 2: FUNC8(0x27); FUNC9(1); FUNC9(0x25); FUNC8(0);
		ph = 0;
		for(k=0;k<count-1;k++) {
			FUNC9(0x24+ph);
			buf[k] = FUNC2();
			ph = 1 - ph;
		}
		FUNC9(0x26); FUNC9(0x27); buf[count-1] = FUNC2(); 
		FUNC9(0x25); FUNC9(4);
		break;

	case 3: FUNC10(0x80); FUNC9(0x24);
		for(k=0;k<count-1;k++) buf[k] = FUNC5();
		FUNC9(4); FUNC10(0xa0); FUNC9(0x24); buf[count-1] = FUNC5();
		FUNC9(4);
		break;

	case 4: FUNC10(0x80); FUNC9(0x24);
		for(k=0;k<(count/2)-1;k++) ((u16 *)buf)[k] = FUNC7();
		buf[count-2] = FUNC5();
		FUNC9(4); FUNC10(0xa0); FUNC9(0x24); buf[count-1] = FUNC5();
		FUNC9(4);
		break;

	case 5: FUNC10(0x80); FUNC9(0x24);
		for(k=0;k<(count/4)-1;k++) ((u32 *)buf)[k] = FUNC6();
		for(k=count-4;k<count-1;k++) buf[k] = FUNC5();
		FUNC9(4); FUNC10(0xa0); FUNC9(0x24); buf[count-1] = FUNC5();
		FUNC9(4);
		break;

	}
}