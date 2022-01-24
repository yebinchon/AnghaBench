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
struct transport {int /*<<< orphan*/  server_options; struct git_transport_data* data; } ;
struct ref {int dummy; } ;
struct packet_reader {scalar_t__ line_peeked; } ;
struct git_transport_data {int version; int got_remote_heads; int /*<<< orphan*/  shallow; int /*<<< orphan*/  extra_have; int /*<<< orphan*/ * fd; } ;
struct argv_array {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int PACKET_READ_CHOMP_NEWLINE ; 
 int PACKET_READ_DIE_ON_ERR_PACKET ; 
 int PACKET_READ_GENTLE_ON_EOF ; 
 int /*<<< orphan*/  REF_NORMAL ; 
 int /*<<< orphan*/  FUNC1 (struct transport*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct transport*) ; 
 int FUNC3 (struct packet_reader*) ; 
 int /*<<< orphan*/  FUNC4 (struct packet_reader*,struct ref**,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct packet_reader*,struct ref**,int,struct argv_array const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct packet_reader*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
#define  protocol_unknown_version 131 
#define  protocol_v0 130 
#define  protocol_v1 129 
#define  protocol_v2 128 

__attribute__((used)) static struct ref *FUNC7(struct transport *transport, int for_push,
			     const struct argv_array *ref_prefixes,
			     int must_list_refs)
{
	struct git_transport_data *data = transport->data;
	struct ref *refs = NULL;
	struct packet_reader reader;

	FUNC1(transport, for_push);

	FUNC6(&reader, data->fd[0], NULL, 0,
			   PACKET_READ_CHOMP_NEWLINE |
			   PACKET_READ_GENTLE_ON_EOF |
			   PACKET_READ_DIE_ON_ERR_PACKET);

	data->version = FUNC3(&reader);
	switch (data->version) {
	case protocol_v2:
		if (must_list_refs)
			FUNC5(data->fd[1], &reader, &refs, for_push,
					ref_prefixes,
					transport->server_options);
		break;
	case protocol_v1:
	case protocol_v0:
		FUNC2(transport);
		FUNC4(&reader, &refs,
				 for_push ? REF_NORMAL : 0,
				 &data->extra_have,
				 &data->shallow);
		break;
	case protocol_unknown_version:
		FUNC0("unknown protocol version");
	}
	data->got_remote_heads = 1;

	if (reader.line_peeked)
		FUNC0("buffer must be empty at the end of handshake()");

	return refs;
}