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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ EOF ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  marksfilename ; 
 int /*<<< orphan*/  notes_ref ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,char*,int) ; 
 scalar_t__ FUNC7 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC10(int latestrev)
{
	FILE *marksfile;
	struct strbuf sb = STRBUF_INIT;
	struct strbuf line = STRBUF_INIT;
	int found = 0;

	if (latestrev < 1)
		return;

	FUNC3(NULL, notes_ref, NULL, 0);
	marksfile = FUNC1(marksfilename, "r");
	if (!marksfile) {
		FUNC4();
		marksfile = FUNC9(marksfilename, "r");
		FUNC0(marksfile);
	} else {
		FUNC6(&sb, ":%d ", latestrev);
		while (FUNC7(&line, marksfile) != EOF) {
			if (FUNC5(line.buf, sb.buf)) {
				found++;
				break;
			}
		}
		FUNC0(marksfile);
		if (!found)
			FUNC4();
	}
	FUNC2(NULL);
	FUNC8(&sb);
	FUNC8(&line);
}