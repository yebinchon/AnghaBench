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
 int /*<<< orphan*/  CVAR_INIT ; 
 int /*<<< orphan*/  CVAR_TEMP ; 
 void* FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 void* qport ; 
 void* showdrop ; 
 void* showpackets ; 
 char* FUNC1 (char*,int) ; 

void FUNC2( int port ) {
	port &= 0xffff;
	showpackets = FUNC0 ("showpackets", "0", CVAR_TEMP );
	showdrop = FUNC0 ("showdrop", "0", CVAR_TEMP );
	qport = FUNC0 ("net_qport", FUNC1("%i", port), CVAR_INIT );
}