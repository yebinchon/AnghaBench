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
typedef  int /*<<< orphan*/  cMsg ;
struct TYPE_2__ {int /*<<< orphan*/  serverId; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int MAX_INFO_VALUE ; 
 TYPE_1__ cl ; 
 int /*<<< orphan*/  qfalse ; 

void FUNC3( void ) {
	char cMsg[MAX_INFO_VALUE];

	// if we are pure we need to send back a command with our referenced pk3 checksums
	FUNC1(cMsg, sizeof(cMsg), "cp %d %s", cl.serverId, FUNC2());

	FUNC0(cMsg, qfalse);
}