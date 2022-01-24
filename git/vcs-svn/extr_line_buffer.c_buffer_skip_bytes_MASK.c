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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,int,size_t,int /*<<< orphan*/ ) ; 

off_t FUNC3(struct line_buffer *buf, off_t nbytes)
{
	char byte_buffer[COPY_BUFFER_LEN];
	off_t done = 0;
	while (done < nbytes && !FUNC0(buf->infile) && !FUNC1(buf->infile)) {
		off_t len = nbytes - done;
		size_t in = len < COPY_BUFFER_LEN ? len : COPY_BUFFER_LEN;
		done += FUNC2(byte_buffer, 1, in, buf->infile);
	}
	return done;
}