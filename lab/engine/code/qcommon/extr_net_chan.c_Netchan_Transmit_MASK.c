#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  send_buf ;
struct TYPE_11__ {int unsentLength; size_t sock; int /*<<< orphan*/  incomingSequence; scalar_t__ outgoingSequence; int /*<<< orphan*/  lastSentSize; int /*<<< orphan*/  lastSentTime; int /*<<< orphan*/  remoteAddress; int /*<<< orphan*/  challenge; int /*<<< orphan*/  compat; int /*<<< orphan*/  unsentBuffer; int /*<<< orphan*/  unsentFragments; scalar_t__ unsentFragmentStart; } ;
typedef  TYPE_1__ netchan_t ;
struct TYPE_12__ {int /*<<< orphan*/  cursize; int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ msg_t ;
typedef  int /*<<< orphan*/  byte ;
struct TYPE_14__ {int /*<<< orphan*/  integer; } ;
struct TYPE_13__ {scalar_t__ integer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_DROP ; 
 int FRAGMENT_SIZE ; 
 int MAX_MSGLEN ; 
 int MAX_PACKETLEN ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t NS_CLIENT ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/ * netsrcString ; 
 TYPE_4__* qport ; 
 int /*<<< orphan*/  qtrue ; 
 TYPE_3__* showpackets ; 

void FUNC11( netchan_t *chan, int length, const byte *data ) {
	msg_t		send;
	byte		send_buf[MAX_PACKETLEN];

	if ( length > MAX_MSGLEN ) {
		FUNC0( ERR_DROP, "Netchan_Transmit: length = %i", length );
	}
	chan->unsentFragmentStart = 0;

	// fragment large reliable messages
	if ( length >= FRAGMENT_SIZE ) {
		chan->unsentFragments = qtrue;
		chan->unsentLength = length;
		FUNC1( chan->unsentBuffer, data, length );

		// only send the first fragment now
		FUNC9( chan );

		return;
	}

	// write the packet header
	FUNC3 (&send, send_buf, sizeof(send_buf));

	FUNC5( &send, chan->outgoingSequence );

	// send the qport if we are a client
	if(chan->sock == NS_CLIENT)
		FUNC6(&send, qport->integer);

#ifdef LEGACY_PROTOCOL
	if(!chan->compat)
#endif
		FUNC5(&send, FUNC7(chan->challenge, chan->outgoingSequence));

	chan->outgoingSequence++;

	FUNC4( &send, data, length );

	// send the datagram
	FUNC8( chan->sock, send.cursize, send.data, chan->remoteAddress );

	// Store send time and size of this packet for rate control
	chan->lastSentTime = FUNC10();
	chan->lastSentSize = send.cursize;

	if ( showpackets->integer ) {
		FUNC2( "%s send %4i : s=%i ack=%i\n"
			, netsrcString[ chan->sock ]
			, send.cursize
			, chan->outgoingSequence - 1
			, chan->incomingSequence );
	}
}