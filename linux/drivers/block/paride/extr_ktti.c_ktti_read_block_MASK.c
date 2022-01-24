#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  PIA ;

/* Variables and functions */
 char FUNC0 (int,int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4( PIA *pi, char * buf, int count )

{	int  k, a, b;

	for (k=0;k<count/2;k++) {
		FUNC2(0x10); FUNC3(0xb); FUNC3(0xa); FUNC3(9); FUNC3(0xc); FUNC3(9);
		a = FUNC1(); FUNC3(0xc); b = FUNC1(); FUNC3(9);
		buf[2*k] = FUNC0(a,b);
		a = FUNC1(); FUNC3(0xc); b = FUNC1(); FUNC3(9);
		buf[2*k+1] = FUNC0(a,b);
	}
}