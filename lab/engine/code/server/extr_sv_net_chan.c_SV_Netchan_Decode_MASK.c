#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_6__ {int readcount; int bit; int cursize; int* data; int /*<<< orphan*/  oob; } ;
typedef  TYPE_1__ msg_t ;
struct TYPE_7__ {int challenge; scalar_t__* reliableCommands; } ;
typedef  TYPE_2__ client_t ;
typedef  int byte ;

/* Variables and functions */
 int MAX_RELIABLE_COMMANDS ; 
 int FUNC0 (TYPE_1__*) ; 
 int SV_DECODE_START ; 
 int /*<<< orphan*/  qfalse ; 

__attribute__((used)) static void FUNC1( client_t *client, msg_t *msg ) {
	int serverId, messageAcknowledge, reliableAcknowledge;
	int i, index, srdc, sbit;
	qboolean soob;
	byte key, *string;

	srdc = msg->readcount;
	sbit = msg->bit;
	soob = msg->oob;

	msg->oob = qfalse;

	serverId = FUNC0(msg);
	messageAcknowledge = FUNC0(msg);
	reliableAcknowledge = FUNC0(msg);

	msg->oob = soob;
	msg->bit = sbit;
	msg->readcount = srdc;

	string = (byte *)client->reliableCommands[ reliableAcknowledge & (MAX_RELIABLE_COMMANDS-1) ];
	index = 0;
	//
	key = client->challenge ^ serverId ^ messageAcknowledge;
	for (i = msg->readcount + SV_DECODE_START; i < msg->cursize; i++) {
		// modify the key with the last sent and acknowledged server command
		if (!string[index])
			index = 0;
		if (string[index] > 127 || string[index] == '%') {
			key ^= '.' << (i & 1);
		}
		else {
			key ^= string[index] << (i & 1);
		}
		index++;
		// decode the data with this key
		*(msg->data + i) = *(msg->data + i) ^ key;
	}
}