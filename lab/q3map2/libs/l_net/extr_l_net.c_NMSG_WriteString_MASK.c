#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {size_t size; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ netmessage_t ;

/* Variables and functions */
 scalar_t__ MAX_NETMESSAGE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 scalar_t__ FUNC2 (char*) ; 

void FUNC3( netmessage_t *msg, char *string ){
	if ( msg->size + FUNC2( string ) + 1 >= MAX_NETMESSAGE ) {
		FUNC0( "NMSG_WriteString: overflow\n" );
		return;
	} //end if
	FUNC1( &msg->data[msg->size], string, FUNC2( string ) + 1 );
	msg->size += FUNC2( string ) + 1;
}