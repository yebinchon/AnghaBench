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
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  addrbuf ;
struct TYPE_2__ {scalar_t__ type; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 scalar_t__ NA_IP ; 
 scalar_t__ NA_IP6 ; 
 int NET_ADDRSTRMAXLEN ; 
 int /*<<< orphan*/  FUNC1 (char*,int,struct sockaddr*) ; 
 TYPE_1__* localIP ; 
 int numIP ; 

void FUNC2(void) {
	int i;
	char addrbuf[NET_ADDRSTRMAXLEN];

	for(i = 0; i < numIP; i++)
	{
		FUNC1(addrbuf, sizeof(addrbuf), (struct sockaddr *) &localIP[i].addr);

		if(localIP[i].type == NA_IP)
			FUNC0( "IP: %s\n", addrbuf);
		else if(localIP[i].type == NA_IP6)
			FUNC0( "IP6: %s\n", addrbuf);
	}
}