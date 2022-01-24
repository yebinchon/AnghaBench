#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  data; int /*<<< orphan*/  cursize; } ;
struct TYPE_7__ {struct TYPE_7__* next; TYPE_6__ msg; int /*<<< orphan*/  clientCommandString; } ;
typedef  TYPE_1__ netchan_buffer_t ;
struct TYPE_8__ {TYPE_1__* netchan_start_queue; TYPE_1__** netchan_end_queue; int /*<<< orphan*/  netchan; scalar_t__ compat; } ;
typedef  TYPE_2__ client_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void FUNC4(client_t *client)
{
	netchan_buffer_t *netbuf;
		
	FUNC0("#462 Netchan_TransmitNextFragment: popping a queued message for transmit\n");
	netbuf = client->netchan_start_queue;

#ifdef LEGACY_PROTOCOL
	if(client->compat)
		SV_Netchan_Encode(client, &netbuf->msg, netbuf->clientCommandString);
#endif

	FUNC1(&client->netchan, netbuf->msg.cursize, netbuf->msg.data);

	// pop from queue
	client->netchan_start_queue = netbuf->next;
	if(!client->netchan_start_queue)
	{
		FUNC0("#462 Netchan_TransmitNextFragment: emptied queue\n");
		client->netchan_end_queue = &client->netchan_start_queue;
	}
	else
		FUNC0("#462 Netchan_TransmitNextFragment: remaining queued message\n");

	FUNC3(netbuf);
}