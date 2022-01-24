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
typedef  int /*<<< orphan*/  msg_t ;
struct TYPE_2__ {int i; float f; } ;
typedef  TYPE_1__ floatint_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 

float FUNC1( msg_t *msg, int key, float oldV ) {
	if ( FUNC0( msg, 1 ) ) {
		floatint_t fi;

		fi.i = FUNC0( msg, 32 ) ^ key;
		return fi.f;
	}
	return oldV;
}