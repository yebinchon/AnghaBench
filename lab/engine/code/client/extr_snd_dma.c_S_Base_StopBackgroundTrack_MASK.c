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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * s_backgroundStream ; 
 scalar_t__* s_rawend ; 

void FUNC1( void ) {
	if(!s_backgroundStream)
		return;
	FUNC0(s_backgroundStream);
	s_backgroundStream = NULL;
	s_rawend[0] = 0;
}