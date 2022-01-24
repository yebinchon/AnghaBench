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
struct packet_reader {int status; char* line; } ;

/* Variables and functions */
 int PACKET_READ_CHOMP_NEWLINE ; 
#define  PACKET_READ_DELIM 131 
#define  PACKET_READ_EOF 130 
#define  PACKET_READ_FLUSH 129 
 int PACKET_READ_GENTLE_ON_EOF ; 
#define  PACKET_READ_NORMAL 128 
 int /*<<< orphan*/  FUNC0 (struct packet_reader*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct packet_reader*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static void FUNC3(void)
{
	struct packet_reader reader;
	FUNC0(&reader, 0, NULL, 0,
			   PACKET_READ_GENTLE_ON_EOF |
			   PACKET_READ_CHOMP_NEWLINE);

	while (FUNC1(&reader) != PACKET_READ_EOF) {
		switch (reader.status) {
		case PACKET_READ_EOF:
			break;
		case PACKET_READ_NORMAL:
			FUNC2("%s\n", reader.line);
			break;
		case PACKET_READ_FLUSH:
			FUNC2("0000\n");
			break;
		case PACKET_READ_DELIM:
			FUNC2("0001\n");
			break;
		}
	}
}