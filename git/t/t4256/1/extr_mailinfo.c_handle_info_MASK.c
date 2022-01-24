#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct strbuf {char* buf; } ;
struct TYPE_4__ {char* buf; } ;
struct TYPE_3__ {char* buf; } ;
struct mailinfo {int /*<<< orphan*/  output; TYPE_2__ email; TYPE_1__ name; int /*<<< orphan*/  keep_subject; struct strbuf** p_hdr_data; struct strbuf** s_hdr_data; scalar_t__ patch_lines; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct mailinfo*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct mailinfo*,struct strbuf*) ; 
 char** header ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

__attribute__((used)) static void FUNC6(struct mailinfo *mi)
{
	struct strbuf *hdr;
	int i;

	for (i = 0; header[i]; i++) {
		/* only print inbody headers if we output a patch file */
		if (mi->patch_lines && mi->s_hdr_data[i])
			hdr = mi->s_hdr_data[i];
		else if (mi->p_hdr_data[i])
			hdr = mi->p_hdr_data[i];
		else
			continue;

		if (!FUNC5(header[i], "Subject")) {
			if (!mi->keep_subject) {
				FUNC1(mi, hdr);
				FUNC0(hdr);
			}
			FUNC4(mi->output, "Subject", hdr);
		} else if (!FUNC5(header[i], "From")) {
			FUNC0(hdr);
			FUNC3(mi, hdr);
			FUNC2(mi->output, "Author: %s\n", mi->name.buf);
			FUNC2(mi->output, "Email: %s\n", mi->email.buf);
		} else {
			FUNC0(hdr);
			FUNC2(mi->output, "%s: %s\n", header[i], hdr->buf);
		}
	}
	FUNC2(mi->output, "\n");
}