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
struct strbuf {char const* buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char const*) ; 

const char *FUNC2(struct strbuf *buf,
			     int argc, const char **argv, char delim)
{
	if (!argc)
		return buf->buf;

	FUNC1(buf, *argv);
	while (--argc) {
		FUNC0(buf, delim);
		FUNC1(buf, *(++argv));
	}

	return buf->buf;
}