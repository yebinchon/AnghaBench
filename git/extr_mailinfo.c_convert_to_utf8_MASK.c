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
struct strbuf {int /*<<< orphan*/  buf; } ;
struct mailinfo {char* metainfo_charset; int input_error; } ;

/* Variables and functions */
 int FUNC0 (char*,char const*,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 scalar_t__ FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(struct mailinfo *mi,
			   struct strbuf *line, const char *charset)
{
	char *out;

	if (!mi->metainfo_charset || !charset || !*charset)
		return 0;

	if (FUNC2(mi->metainfo_charset, charset))
		return 0;
	out = FUNC1(line->buf, mi->metainfo_charset, charset);
	if (!out) {
		mi->input_error = -1;
		return FUNC0("cannot convert from %s to %s",
			     charset, mi->metainfo_charset);
	}
	FUNC3(line, out, FUNC4(out), FUNC4(out));
	return 0;
}