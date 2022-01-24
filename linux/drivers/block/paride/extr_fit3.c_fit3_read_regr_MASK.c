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
struct TYPE_3__ {int mode; } ;
typedef  TYPE_1__ PIA ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6( PIA *pi, int cont, int regr )

{	int  a, b;

	if (cont) {
	  if (regr != 6) return 0xff;
	  regr = 7;
	} 

	switch (pi->mode) {

	case 0: FUNC5(0xc); FUNC4(regr + 0x10); FUNC5(0x8); FUNC5(0xc);
		FUNC5(0xd); a = FUNC2();
		FUNC5(0xf); b = FUNC2(); 
		FUNC5(0xc);
		return FUNC0(a,b);

	case 1: FUNC5(0xc); FUNC4(regr + 0x90); FUNC5(0x8); FUNC5(0xc);
		FUNC5(0xec); FUNC5(0xee); FUNC5(0xef); a = FUNC1(); 
		FUNC5(0xc);
		return a;

	case 2: FUNC5(0xc); FUNC4(regr + 0x90); FUNC5(0x8); FUNC5(0xc); 
		FUNC5(0xec); 
		a = FUNC3(); b = FUNC3(); 
		FUNC5(0xc);
		return a;

	}
	return -1; 

}