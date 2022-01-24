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
struct imap_buffer {int offset; char* buf; int bytes; int /*<<< orphan*/  sock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ verbosity ; 

__attribute__((used)) static int FUNC4(struct imap_buffer *b, char **s)
{
	int n;
	int start = b->offset;

	*s = b->buf + start;

	for (;;) {
		/* make sure we have enough data to read the \r\n sequence */
		if (b->offset + 1 >= b->bytes) {
			if (start) {
				/* shift down used bytes */
				*s = b->buf;

				FUNC0(start <= b->bytes);
				n = b->bytes - start;

				if (n)
					FUNC1(b->buf, b->buf + start, n);
				b->offset -= start;
				b->bytes = n;
				start = 0;
			}

			n = FUNC3(&b->sock, b->buf + b->bytes,
					 sizeof(b->buf) - b->bytes);

			if (n <= 0)
				return -1;

			b->bytes += n;
		}

		if (b->buf[b->offset] == '\r') {
			FUNC0(b->offset + 1 < b->bytes);
			if (b->buf[b->offset + 1] == '\n') {
				b->buf[b->offset] = 0;  /* terminate the string */
				b->offset += 2; /* next line */
				if (0 < verbosity)
					FUNC2(*s);
				return 0;
			}
		}

		b->offset++;
	}
	/* not reached */
}