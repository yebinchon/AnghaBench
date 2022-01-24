#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int mid_quote; size_t buf; size_t len; } ;
typedef  TYPE_1__ buf_descriptor_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (size_t,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 size_t FUNC3 (size_t,size_t,char*,char const*) ; 
 scalar_t__ print_escaped ; 
 scalar_t__ print_raw ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

__attribute__((used)) static void
FUNC5(void *buf_descriptor_v, const char *str) {
	buf_descriptor_t *buf_descriptor = (buf_descriptor_t *)buf_descriptor_v;

	if (print_raw) {
		FUNC2("%s", str);
	}
	if (print_escaped) {
		const char *it = str;
		while (*it != '\0') {
			if (!buf_descriptor->mid_quote) {
				FUNC2("\"");
				buf_descriptor->mid_quote = true;
			}
			switch (*it) {
			case '\\':
				FUNC2("\\");
				break;
			case '\"':
				FUNC2("\\\"");
				break;
			case '\t':
				FUNC2("\\t");
				break;
			case '\n':
				FUNC2("\\n\"\n");
				buf_descriptor->mid_quote = false;
				break;
			default:
				FUNC2("%c", *it);
			}
			it++;
		}
	}

	size_t written = FUNC3(buf_descriptor->buf,
	    buf_descriptor->len, "%s", str);
	FUNC0(written, FUNC4(str), "Buffer overflow!");
	buf_descriptor->buf += written;
	buf_descriptor->len -= written;
	FUNC1(buf_descriptor->len, 0, "Buffer out of space!");
}