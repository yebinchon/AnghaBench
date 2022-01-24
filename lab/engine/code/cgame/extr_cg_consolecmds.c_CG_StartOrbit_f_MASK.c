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
typedef  int /*<<< orphan*/  var ;
struct TYPE_2__ {scalar_t__ value; } ;

/* Variables and functions */
 int MAX_TOKEN_CHARS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__ cg_cameraOrbit ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

__attribute__((used)) static void FUNC3( void ) {
	char var[MAX_TOKEN_CHARS];

	FUNC2( "developer", var, sizeof( var ) );
	if ( !FUNC0(var) ) {
		return;
	}
	if (cg_cameraOrbit.value != 0) {
		FUNC1 ("cg_cameraOrbit", "0");
		FUNC1("cg_thirdPerson", "0");
	} else {
		FUNC1("cg_cameraOrbit", "5");
		FUNC1("cg_thirdPerson", "1");
		FUNC1("cg_thirdPersonAngle", "0");
		FUNC1("cg_thirdPersonRange", "100");
	}
}