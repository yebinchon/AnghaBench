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
typedef  int qboolean ;

/* Variables and functions */
 int /*<<< orphan*/  UI_HASUNIQUECDKEY ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int qfalse ; 
 scalar_t__ qtrue ; 
 scalar_t__ uivm ; 

qboolean FUNC1( void ) {
	if (uivm) {
		return (FUNC0( uivm, UI_HASUNIQUECDKEY) == qtrue);
	} else {
		return qfalse;
	}
}