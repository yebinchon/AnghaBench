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
typedef  enum packet_read_status { ____Placeholder_packet_read_status } packet_read_status ;

/* Variables and functions */
 int PACKET_READ_CHOMP_NEWLINE ; 
 int PACKET_READ_DELIM ; 
 int PACKET_READ_DIE_ON_ERR_PACKET ; 
 int PACKET_READ_EOF ; 
 int PACKET_READ_FLUSH ; 
 int PACKET_READ_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC2 (int,char**,size_t*,char*,int,int) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*,char*) ; 

enum packet_read_status FUNC6(int fd, char **src_buffer,
						size_t *src_len, char *buffer,
						unsigned size, int *pktlen,
						int options)
{
	int len;
	char linelen[4];

	if (FUNC2(fd, src_buffer, src_len, linelen, 4, options) < 0) {
		*pktlen = -1;
		return PACKET_READ_EOF;
	}

	len = FUNC3(linelen);

	if (len < 0) {
		FUNC1(FUNC0("protocol error: bad line length character: %.4s"), linelen);
	} else if (!len) {
		FUNC4("0000", 4, 0);
		*pktlen = 0;
		return PACKET_READ_FLUSH;
	} else if (len == 1) {
		FUNC4("0001", 4, 0);
		*pktlen = 0;
		return PACKET_READ_DELIM;
	} else if (len < 4) {
		FUNC1(FUNC0("protocol error: bad line length %d"), len);
	}

	len -= 4;
	if ((unsigned)len >= size)
		FUNC1(FUNC0("protocol error: bad line length %d"), len);

	if (FUNC2(fd, src_buffer, src_len, buffer, len, options) < 0) {
		*pktlen = -1;
		return PACKET_READ_EOF;
	}

	if ((options & PACKET_READ_CHOMP_NEWLINE) &&
	    len && buffer[len-1] == '\n')
		len--;

	buffer[len] = 0;
	FUNC4(buffer, len, 0);

	if ((options & PACKET_READ_DIE_ON_ERR_PACKET) &&
	    FUNC5(buffer, "ERR "))
		FUNC1(FUNC0("remote error: %s"), buffer + 4);

	*pktlen = len;
	return PACKET_READ_NORMAL;
}