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

/* Variables and functions */
 int MLOGBUF_MSGMAX ; 
 unsigned long MLOGBUF_SIZE ; 
 char* mlogbuf ; 
 unsigned long mlogbuf_end ; 
 int /*<<< orphan*/  mlogbuf_rlock ; 
 unsigned long mlogbuf_start ; 
 scalar_t__ mlogbuf_timestamp ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(void)
{
	char temp_buf[MLOGBUF_MSGMAX];
	char *p;
	unsigned long index;
	unsigned long flags;
	unsigned int printed_len;

	/* Get output from mlogbuf */
	while (mlogbuf_start != mlogbuf_end) {
		temp_buf[0] = '\0';
		p = temp_buf;
		printed_len = 0;

		FUNC1(&mlogbuf_rlock, flags);

		index = mlogbuf_start;
		while (index != mlogbuf_end) {
			*p = mlogbuf[index];
			index = (index + 1) % MLOGBUF_SIZE;
			if (!*p)
				break;
			p++;
			if (++printed_len >= MLOGBUF_MSGMAX - 1)
				break;
		}
		*p = '\0';
		if (temp_buf[0])
			FUNC0("%s", temp_buf);
		mlogbuf_start = index;

		mlogbuf_timestamp = 0;
		FUNC2(&mlogbuf_rlock, flags);
	}
}