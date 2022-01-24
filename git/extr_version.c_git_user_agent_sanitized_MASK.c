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
struct strbuf {int len; int* buf; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*) ; 

const char *FUNC3(void)
{
	static const char *agent = NULL;

	if (!agent) {
		struct strbuf buf = STRBUF_INIT;
		int i;

		FUNC1(&buf, FUNC0());
		FUNC2(&buf);
		for (i = 0; i < buf.len; i++) {
			if (buf.buf[i] <= 32 || buf.buf[i] >= 127)
				buf.buf[i] = '.';
		}
		agent = buf.buf;
	}

	return agent;
}