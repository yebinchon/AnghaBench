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
typedef  int /*<<< orphan*/  swapBuffersCommand_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 

void *FUNC2( int bytes ) {
	return FUNC1( bytes, FUNC0( sizeof( swapBuffersCommand_t ), sizeof(void *) ) );
}