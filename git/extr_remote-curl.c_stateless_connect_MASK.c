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
struct strbuf {int dummy; } ;
struct rpc_state {char const* service_name; int in; int gzip_request; int write_line_lengths; int /*<<< orphan*/ * buf; int /*<<< orphan*/ * protocol_header; int /*<<< orphan*/ * hdr_accept; int /*<<< orphan*/ * hdr_content_type; int /*<<< orphan*/ * service_url; scalar_t__ len; scalar_t__ flush_read_but_not_sent; scalar_t__ initial_buffer; scalar_t__ any_written; scalar_t__ out; scalar_t__ pos; int /*<<< orphan*/  alloc; } ;
struct discovery {scalar_t__ version; int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
typedef  enum packet_read_status { ____Placeholder_packet_read_status } packet_read_status ;
struct TYPE_2__ {int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int PACKET_READ_EOF ; 
 int PACKET_READ_FLUSH ; 
 int /*<<< orphan*/  PACKET_READ_GENTLE_ON_EOF ; 
 struct strbuf STRBUF_INIT ; 
 struct discovery* FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (scalar_t__,struct strbuf*) ; 
 int /*<<< orphan*/  http_post_buffer ; 
 scalar_t__ FUNC5 (struct rpc_state*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ protocol_v2 ; 
 int /*<<< orphan*/  FUNC7 (struct rpc_state*,int /*<<< orphan*/ ,size_t*,int*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/ * FUNC8 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*) ; 
 TYPE_1__ url ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ) ; 
 void* FUNC12 (char*,char const*,...) ; 

__attribute__((used)) static int FUNC13(const char *service_name)
{
	struct discovery *discover;
	struct rpc_state rpc;
	struct strbuf buf = STRBUF_INIT;

	/*
	 * Run the info/refs request and see if the server supports protocol
	 * v2.  If and only if the server supports v2 can we successfully
	 * establish a stateless connection, otherwise we need to tell the
	 * client to fallback to using other transport helper functions to
	 * complete their request.
	 */
	discover = FUNC1(service_name, 0);
	if (discover->version != protocol_v2) {
		FUNC6("fallback\n");
		FUNC2(stdout);
		return -1;
	} else {
		/* Stateless Connection established */
		FUNC6("\n");
		FUNC2(stdout);
	}

	rpc.service_name = service_name;
	rpc.service_url = FUNC12("%s%s", url.buf, rpc.service_name);
	rpc.hdr_content_type = FUNC12("Content-Type: application/x-%s-request", rpc.service_name);
	rpc.hdr_accept = FUNC12("Accept: application/x-%s-result", rpc.service_name);
	if (FUNC4(discover->version, &buf)) {
		rpc.protocol_header = FUNC8(&buf, NULL);
	} else {
		rpc.protocol_header = NULL;
		FUNC9(&buf);
	}
	rpc.buf = FUNC11(http_post_buffer);
	rpc.alloc = http_post_buffer;
	rpc.len = 0;
	rpc.pos = 0;
	rpc.in = 1;
	rpc.out = 0;
	rpc.any_written = 0;
	rpc.gzip_request = 1;
	rpc.initial_buffer = 0;
	rpc.write_line_lengths = 1;
	rpc.flush_read_but_not_sent = 0;

	/*
	 * Dump the capability listing that we got from the server earlier
	 * during the info/refs request.
	 */
	FUNC10(rpc.in, discover->buf, discover->len);

	/* Until we see EOF keep sending POSTs */
	while (1) {
		size_t avail;
		enum packet_read_status status;

		if (!FUNC7(&rpc, PACKET_READ_GENTLE_ON_EOF, &avail,
				       &status))
			FUNC0("The entire rpc->buf should be larger than LARGE_PACKET_MAX");
		if (status == PACKET_READ_EOF)
			break;
		if (FUNC5(&rpc, status == PACKET_READ_FLUSH))
			/* We would have an err here */
			break;
		/* Reset the buffer for next request */
		rpc.len = 0;
	}

	FUNC3(rpc.service_url);
	FUNC3(rpc.hdr_content_type);
	FUNC3(rpc.hdr_accept);
	FUNC3(rpc.protocol_header);
	FUNC3(rpc.buf);
	FUNC9(&buf);

	return 0;
}