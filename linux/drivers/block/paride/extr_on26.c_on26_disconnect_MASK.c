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
struct TYPE_3__ {int mode; int saved_r0; int /*<<< orphan*/  saved_r2; } ;
typedef  TYPE_1__ PIA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  P1 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4 ( PIA *pi )

{       if (pi->mode >= 2) { FUNC3(4); FUNC3(4); FUNC3(4); FUNC3(4); }
	              else { FUNC1(4); P1; FUNC1(4); P1; }
	FUNC0(0x30);
        FUNC1(pi->saved_r0);
        FUNC2(pi->saved_r2);
}