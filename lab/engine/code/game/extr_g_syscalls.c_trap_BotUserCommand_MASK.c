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
typedef  int /*<<< orphan*/  usercmd_t ;

/* Variables and functions */
 int /*<<< orphan*/  BOTLIB_USER_COMMAND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

void FUNC1(int clientNum, usercmd_t *ucmd) {
	FUNC0( BOTLIB_USER_COMMAND, clientNum, ucmd );
}