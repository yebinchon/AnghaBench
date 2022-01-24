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
struct strbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct strbuf*,int) ; 

__attribute__((used)) static const char *FUNC1(struct strbuf *outbuf, const char *in)
{
	int c;
	int take_next_literally = 0;

	while ((c = *in++) != 0) {
		if (take_next_literally == 1) {
			take_next_literally = 0;
		} else {
			switch (c) {
			case '\\':
				take_next_literally = 1;
				continue;
			case '"':
				return in;
			}
		}

		FUNC0(outbuf, c);
	}

	return in;
}