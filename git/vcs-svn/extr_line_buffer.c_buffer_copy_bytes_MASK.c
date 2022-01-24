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
struct line_buffer {int /*<<< orphan*/  infile; } ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 int COPY_BUFFER_LEN ; 
 scalar_t__ FUNC0 (struct line_buffer*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (char*,int,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 

off_t FUNC5(struct line_buffer *buf, off_t nbytes)
{
	char byte_buffer[COPY_BUFFER_LEN];
	off_t done = 0;
	while (done < nbytes && !FUNC1(buf->infile) && !FUNC2(buf->infile)) {
		off_t len = nbytes - done;
		size_t in = len < COPY_BUFFER_LEN ? len : COPY_BUFFER_LEN;
		in = FUNC3(byte_buffer, 1, in, buf->infile);
		done += in;
		FUNC4(byte_buffer, 1, in, stdout);
		if (FUNC2(stdout))
			return done + FUNC0(buf, nbytes - done);
	}
	return done;
}