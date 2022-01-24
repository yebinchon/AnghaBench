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
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (char const*,unsigned int,int) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char const) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char*,char const,...) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 
 unsigned int FUNC7 (char const*) ; 
 int /*<<< orphan*/  trace_pack ; 
 int /*<<< orphan*/  trace_packet ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(const char *buf, unsigned int len, int write)
{
	int i;
	struct strbuf out;
	static int in_pack, sideband;

	if (!FUNC9(&trace_packet) && !FUNC9(&trace_pack))
		return;

	if (in_pack) {
		if (FUNC1(buf, len, sideband))
			return;
	} else if (FUNC2(buf, "PACK") || FUNC2(buf, "\1PACK")) {
		in_pack = 1;
		sideband = *buf == '\1';
		FUNC1(buf, len, sideband);

		/*
		 * Make a note in the human-readable trace that the pack data
		 * started.
		 */
		buf = "PACK ...";
		len = FUNC7(buf);
	}

	if (!FUNC9(&trace_packet))
		return;

	/* +32 is just a guess for header + quoting */
	FUNC5(&out, len+32);

	FUNC4(&out, "packet: %12s%c ",
		    FUNC0(), write ? '>' : '<');

	/* XXX we should really handle printable utf8 */
	for (i = 0; i < len; i++) {
		/* suppress newlines */
		if (buf[i] == '\n')
			continue;
		if (buf[i] >= 0x20 && buf[i] <= 0x7e)
			FUNC3(&out, buf[i]);
		else
			FUNC4(&out, "\\%o", buf[i]);
	}

	FUNC3(&out, '\n');
	FUNC8(&trace_packet, &out);
	FUNC6(&out);
}