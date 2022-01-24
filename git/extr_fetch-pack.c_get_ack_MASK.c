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
struct packet_reader {int pktlen; char const* line; } ;
struct object_id {int dummy; } ;
typedef  enum ack_type { ____Placeholder_ack_type } ack_type ;

/* Variables and functions */
 int ACK ; 
 int ACK_common ; 
 int ACK_continue ; 
 int ACK_ready ; 
 int NAK ; 
 scalar_t__ PACKET_READ_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC2 (struct packet_reader*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,struct object_id*,char const**) ; 
 scalar_t__ FUNC4 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 

__attribute__((used)) static enum ack_type FUNC7(struct packet_reader *reader,
			     struct object_id *result_oid)
{
	int len;
	const char *arg;

	if (FUNC2(reader) != PACKET_READ_NORMAL)
		FUNC1(FUNC0("git fetch-pack: expected ACK/NAK, got a flush packet"));
	len = reader->pktlen;

	if (!FUNC5(reader->line, "NAK"))
		return NAK;
	if (FUNC4(reader->line, "ACK ", &arg)) {
		const char *p;
		if (!FUNC3(arg, result_oid, &p)) {
			len -= p - reader->line;
			if (len < 1)
				return ACK;
			if (FUNC6(p, "continue"))
				return ACK_continue;
			if (FUNC6(p, "common"))
				return ACK_common;
			if (FUNC6(p, "ready"))
				return ACK_ready;
			return ACK;
		}
	}
	FUNC1(FUNC0("git fetch-pack: expected ACK/NAK, got '%s'"), reader->line);
}