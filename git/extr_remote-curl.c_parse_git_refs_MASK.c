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
struct ref {int dummy; } ;
struct packet_reader {int dummy; } ;
struct discovery {int /*<<< orphan*/  shallow; int /*<<< orphan*/  version; int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int PACKET_READ_CHOMP_NEWLINE ; 
 int PACKET_READ_DIE_ON_ERR_PACKET ; 
 int PACKET_READ_GENTLE_ON_EOF ; 
 int /*<<< orphan*/  REF_NORMAL ; 
 int /*<<< orphan*/  FUNC1 (struct packet_reader*) ; 
 int /*<<< orphan*/  FUNC2 (struct packet_reader*,struct ref**,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct packet_reader*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
#define  protocol_unknown_version 131 
#define  protocol_v0 130 
#define  protocol_v1 129 
#define  protocol_v2 128 

__attribute__((used)) static struct ref *FUNC4(struct discovery *heads, int for_push)
{
	struct ref *list = NULL;
	struct packet_reader reader;

	FUNC3(&reader, -1, heads->buf, heads->len,
			   PACKET_READ_CHOMP_NEWLINE |
			   PACKET_READ_GENTLE_ON_EOF |
			   PACKET_READ_DIE_ON_ERR_PACKET);

	heads->version = FUNC1(&reader);
	switch (heads->version) {
	case protocol_v2:
		/*
		 * Do nothing.  This isn't a list of refs but rather a
		 * capability advertisement.  Client would have run
		 * 'stateless-connect' so we'll dump this capability listing
		 * and let them request the refs themselves.
		 */
		break;
	case protocol_v1:
	case protocol_v0:
		FUNC2(&reader, &list, for_push ? REF_NORMAL : 0,
				 NULL, &heads->shallow);
		break;
	case protocol_unknown_version:
		FUNC0("unknown protocol version");
	}

	return list;
}