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
struct strbuf {char* buf; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct strbuf*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,struct strbuf*) ; 
 char* FUNC4 (struct strbuf*,char const*) ; 
 char* FUNC5 (struct strbuf*,char const*) ; 

__attribute__((used)) static void FUNC6(struct strbuf *line)
{
	struct strbuf outbuf;
	const char *in = line->buf;
	int c;

	FUNC1(&outbuf, line->len);

	while ((c = *in++) != 0) {
		switch (c) {
		case '"':
			in = FUNC5(&outbuf, in);
			continue;
		case '(':
			in = FUNC4(&outbuf, in);
			continue;
		}

		FUNC0(&outbuf, c);
	}

	FUNC3(&outbuf, line);
	FUNC2(&outbuf);

}