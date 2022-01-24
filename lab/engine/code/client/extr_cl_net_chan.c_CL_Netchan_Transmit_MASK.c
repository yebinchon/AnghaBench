#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ compat; } ;
typedef  TYPE_1__ netchan_t ;
struct TYPE_10__ {int /*<<< orphan*/  data; int /*<<< orphan*/  cursize; } ;
typedef  TYPE_2__ msg_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  clc_EOF ; 

void FUNC5( netchan_t *chan, msg_t* msg ) {
	FUNC3( msg, clc_EOF );

#ifdef LEGACY_PROTOCOL
	if(chan->compat)
		CL_Netchan_Encode(msg);
#endif

	FUNC4(chan, msg->cursize, msg->data);
	
	// Transmit all fragments without delay
	while(FUNC1(chan))
	{
		FUNC2("WARNING: #462 unsent fragments (not supposed to happen!)\n");
	}
}