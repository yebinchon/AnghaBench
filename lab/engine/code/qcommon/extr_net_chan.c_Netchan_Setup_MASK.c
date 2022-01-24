#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  qboolean ;
typedef  int /*<<< orphan*/  netsrc_t ;
struct TYPE_4__ {int qport; int outgoingSequence; int challenge; int /*<<< orphan*/  compat; scalar_t__ incomingSequence; int /*<<< orphan*/  remoteAddress; int /*<<< orphan*/  sock; } ;
typedef  TYPE_1__ netchan_t ;
typedef  int /*<<< orphan*/  netadr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void FUNC1(netsrc_t sock, netchan_t *chan, netadr_t adr, int qport, int challenge, qboolean compat)
{
	FUNC0 (chan, 0, sizeof(*chan));
	
	chan->sock = sock;
	chan->remoteAddress = adr;
	chan->qport = qport;
	chan->incomingSequence = 0;
	chan->outgoingSequence = 1;
	chan->challenge = challenge;

#ifdef LEGACY_PROTOCOL
	chan->compat = compat;
#endif
}