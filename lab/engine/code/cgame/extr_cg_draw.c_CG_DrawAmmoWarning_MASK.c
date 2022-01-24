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
struct TYPE_4__ {int lowAmmoWarning; } ;
struct TYPE_3__ {scalar_t__ integer; } ;

/* Variables and functions */
 int BIGCHAR_WIDTH ; 
 int /*<<< orphan*/  FUNC0 (int,int,char const*,float) ; 
 int FUNC1 (char const*) ; 
 TYPE_2__ cg ; 
 TYPE_1__ cg_drawAmmoWarning ; 

__attribute__((used)) static void FUNC2( void ) {
	const char	*s;
	int			w;

	if ( cg_drawAmmoWarning.integer == 0 ) {
		return;
	}

	if ( !cg.lowAmmoWarning ) {
		return;
	}

	if ( cg.lowAmmoWarning == 2 ) {
		s = "OUT OF AMMO";
	} else {
		s = "LOW AMMO WARNING";
	}
	w = FUNC1( s ) * BIGCHAR_WIDTH;
	FUNC0(320 - w / 2, 64, s, 1.0F);
}