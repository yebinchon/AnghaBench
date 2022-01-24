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
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 
 int /*<<< orphan*/  trace_curl ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct strbuf*) ; 

__attribute__((used)) static void FUNC5(const char *text, unsigned char *ptr, size_t size)
{
	size_t i;
	struct strbuf out = STRBUF_INIT;
	unsigned int width = 60;

	FUNC1(&out, "%s, %10.10ld bytes (0x%8.8lx)\n",
		text, (long)size, (long)size);
	FUNC4(&trace_curl, &out);

	for (i = 0; i < size; i += width) {
		size_t w;

		FUNC3(&out);
		FUNC1(&out, "%s: ", text);
		for (w = 0; (w < width) && (i + w < size); w++) {
			unsigned char ch = ptr[i + w];

			FUNC0(&out,
				       (ch >= 0x20) && (ch < 0x80)
				       ? ch : '.');
		}
		FUNC0(&out, '\n');
		FUNC4(&trace_curl, &out);
	}
	FUNC2(&out);
}