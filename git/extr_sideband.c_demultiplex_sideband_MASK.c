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
struct strbuf {char* buf; scalar_t__ len; } ;
typedef  enum sideband_type { ____Placeholder_sideband_type } sideband_type ;

/* Variables and functions */
 char* ANSI_SUFFIX ; 
 char* DISPLAY_PREFIX ; 
 char* DUMB_SUFFIX ; 
 int SIDEBAND_FLUSH ; 
 int SIDEBAND_PRIMARY ; 
 int SIDEBAND_PROTOCOL_ERROR ; 
 int SIDEBAND_REMOTE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char const) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,char*,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*) ; 
 int FUNC9 (char const*) ; 
 char* FUNC10 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,scalar_t__) ; 

int FUNC12(const char *me, char *buf, int len,
			 int die_on_error,
			 struct strbuf *scratch,
			 enum sideband_type *sideband_type)
{
	static const char *suffix;
	const char *b, *brk;
	int band;

	if (!suffix) {
		if (FUNC2(2) && !FUNC1())
			suffix = ANSI_SUFFIX;
		else
			suffix = DUMB_SUFFIX;
	}

	if (len == 0) {
		*sideband_type = SIDEBAND_FLUSH;
		goto cleanup;
	}
	if (len < 1) {
		FUNC5(scratch,
			    "%s%s: protocol error: no band designator",
			    scratch->len ? "\n" : "", me);
		*sideband_type = SIDEBAND_PROTOCOL_ERROR;
		goto cleanup;
	}
	band = buf[0] & 0xff;
	buf[len] = '\0';
	len--;
	switch (band) {
	case 3:
		if (die_on_error)
			FUNC0("remote error: %s", buf + 1);
		FUNC5(scratch, "%s%s", scratch->len ? "\n" : "",
			    DISPLAY_PREFIX);
		FUNC3(scratch, buf + 1, len);

		*sideband_type = SIDEBAND_REMOTE_ERROR;
		break;
	case 2:
		b = buf + 1;

		/*
		 * Append a suffix to each nonempty line to clear the
		 * end of the screen line.
		 *
		 * The output is accumulated in a buffer and
		 * each line is printed to stderr using
		 * write(2) to ensure inter-process atomicity.
		 */
		while ((brk = FUNC10(b, "\n\r"))) {
			int linelen = brk - b;

			if (!scratch->len)
				FUNC6(scratch, DISPLAY_PREFIX);
			if (linelen > 0) {
				FUNC3(scratch, b, linelen);
				FUNC6(scratch, suffix);
			}

			FUNC4(scratch, *brk);
			FUNC11(2, scratch->buf, scratch->len);
			FUNC8(scratch);

			b = brk + 1;
		}

		if (*b) {
			FUNC6(scratch, scratch->len ?
				    "" : DISPLAY_PREFIX);
			FUNC3(scratch, b, FUNC9(b));
		}
		return 0;
	case 1:
		*sideband_type = SIDEBAND_PRIMARY;
		break;
	default:
		FUNC5(scratch, "%s%s: protocol error: bad band #%d",
			    scratch->len ? "\n" : "", me, band);
		*sideband_type = SIDEBAND_PROTOCOL_ERROR;
		break;
	}

cleanup:
	if (die_on_error && *sideband_type == SIDEBAND_PROTOCOL_ERROR)
		FUNC0("%s", scratch->buf);
	if (scratch->len) {
		FUNC4(scratch, '\n');
		FUNC11(2, scratch->buf, scratch->len);
	}
	FUNC7(scratch);
	return 1;
}