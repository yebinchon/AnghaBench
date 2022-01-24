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
struct strbuf {char const* buf; } ;
struct packet_reader {char const* line; scalar_t__ pktlen; int /*<<< orphan*/  src_len; int /*<<< orphan*/  src_buffer; } ;
struct discovery {int proto_git; int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int PACKET_READ_CHOMP_NEWLINE ; 
 int PACKET_READ_DIE_ON_ERR_PACKET ; 
 scalar_t__ PACKET_READ_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (struct packet_reader*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct packet_reader*) ; 
 scalar_t__ FUNC4 (char const*,char const*,char const**) ; 
 scalar_t__ FUNC5 (char const*,char const*) ; 

__attribute__((used)) static void FUNC6(struct discovery *d, const char *service,
			     struct strbuf *type)
{
	const char *p;
	struct packet_reader reader;

	/*
	 * If we don't see x-$service-advertisement, then it's not smart-http.
	 * But once we do, we commit to it and assume any other protocol
	 * violations are hard errors.
	 */
	if (!FUNC4(type->buf, "application/x-", &p) ||
	    !FUNC4(p, service, &p) ||
	    FUNC5(p, "-advertisement"))
		return;

	FUNC2(&reader, -1, d->buf, d->len,
			   PACKET_READ_CHOMP_NEWLINE |
			   PACKET_READ_DIE_ON_ERR_PACKET);
	if (FUNC3(&reader) != PACKET_READ_NORMAL)
		FUNC1(FUNC0("invalid server response; expected service, got flush packet"));

	if (FUNC4(reader.line, "# service=", &p) && !FUNC5(p, service)) {
		/*
		 * The header can include additional metadata lines, up
		 * until a packet flush marker.  Ignore these now, but
		 * in the future we might start to scan them.
		 */
		for (;;) {
			FUNC3(&reader);
			if (reader.pktlen <= 0) {
				break;
			}
		}

		/*
		 * v0 smart http; callers expect us to soak up the
		 * service and header packets
		 */
		d->buf = reader.src_buffer;
		d->len = reader.src_len;
		d->proto_git = 1;

	} else if (!FUNC5(reader.line, "version 2")) {
		/*
		 * v2 smart http; do not consume version packet, which will
		 * be handled elsewhere.
		 */
		d->proto_git = 1;

	} else {
		FUNC1(FUNC0("invalid server response; got '%s'"), reader.line);
	}
}