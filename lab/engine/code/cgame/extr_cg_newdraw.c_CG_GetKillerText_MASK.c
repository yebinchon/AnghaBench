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
struct TYPE_2__ {scalar_t__* killerName; } ;

/* Variables and functions */
 TYPE_1__ cg ; 
 char* FUNC0 (char*,scalar_t__*) ; 

const char *FUNC1(void) {
	const char *s = "";
	if ( cg.killerName[0] ) {
		s = FUNC0("Tagged by %s", cg.killerName );
	}
	return s;
}