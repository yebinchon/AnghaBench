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
 int /*<<< orphan*/  G_GET_USERCMD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

void FUNC1( int clientNum, usercmd_t *cmd ) {
	FUNC0( G_GET_USERCMD, clientNum, cmd );
}