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
struct tr2_dst {int /*<<< orphan*/  sysenv_var; } ;
struct strbuf {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct tr2_dst*) ; 
 int /*<<< orphan*/  FUNC3 (struct tr2_dst*) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC8(struct tr2_dst *dst, struct strbuf *buf_line)
{
	int fd = FUNC2(dst);

	FUNC0(buf_line); /* ensure final NL on buffer */

	/*
	 * We do not use write_in_full() because we do not want
	 * a short-write to try again.  We are using O_APPEND mode
	 * files and the kernel handles the atomic seek+write. If
	 * another thread or git process is concurrently writing to
	 * this fd or file, our remainder-write may not be contiguous
	 * with our initial write of this message.  And that will
	 * confuse readers.  So just don't bother.
	 *
	 * It is assumed that TRACE2 messages are short enough that
	 * the system can write them in 1 attempt and we won't see
	 * a short-write.
	 *
	 * If we get an IO error, just close the trace dst.
	 */
	if (FUNC7(fd, buf_line->buf, buf_line->len) >= 0)
		return;

	if (FUNC4())
		FUNC6("unable to write trace to '%s': %s",
			FUNC5(dst->sysenv_var),
			FUNC1(errno));
	FUNC3(dst);
}