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
struct strbuf {size_t len; size_t alloc; scalar_t__ buf; } ;
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ LARGE_PACKET_DATA_MAX ; 
 int /*<<< orphan*/  PACKET_READ_GENTLE_ON_EOF ; 
 int FUNC0 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,size_t) ; 

ssize_t FUNC4(int fd_in, struct strbuf *sb_out)
{
	int packet_len;

	size_t orig_len = sb_out->len;
	size_t orig_alloc = sb_out->alloc;

	for (;;) {
		FUNC1(sb_out, LARGE_PACKET_DATA_MAX);
		packet_len = FUNC0(fd_in, NULL, NULL,
			/* strbuf_grow() above always allocates one extra byte to
			 * store a '\0' at the end of the string. packet_read()
			 * writes a '\0' extra byte at the end, too. Let it know
			 * that there is already room for the extra byte.
			 */
			sb_out->buf + sb_out->len, LARGE_PACKET_DATA_MAX+1,
			PACKET_READ_GENTLE_ON_EOF);
		if (packet_len <= 0)
			break;
		sb_out->len += packet_len;
	}

	if (packet_len < 0) {
		if (orig_alloc == 0)
			FUNC2(sb_out);
		else
			FUNC3(sb_out, orig_len);
		return packet_len;
	}
	return sb_out->len - orig_len;
}