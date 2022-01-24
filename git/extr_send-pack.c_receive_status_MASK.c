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
struct ref {scalar_t__ status; struct ref* next; int /*<<< orphan*/  remote_status; } ;
struct packet_reader {char* line; } ;

/* Variables and functions */
 scalar_t__ PACKET_READ_NORMAL ; 
 scalar_t__ REF_STATUS_EXPECTING_REPORT ; 
 scalar_t__ REF_STATUS_OK ; 
 scalar_t__ REF_STATUS_REMOTE_REJECT ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 struct ref* FUNC1 (struct ref*,char const*) ; 
 scalar_t__ FUNC2 (struct packet_reader*) ; 
 int FUNC3 (struct packet_reader*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 char* FUNC5 (char const*,char) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int FUNC8(struct packet_reader *reader, struct ref *refs)
{
	struct ref *hint;
	int ret;

	hint = NULL;
	ret = FUNC3(reader);
	while (1) {
		const char *refname;
		char *msg;
		if (FUNC2(reader) != PACKET_READ_NORMAL)
			break;
		if (!FUNC4(reader->line, "ok ") && !FUNC4(reader->line, "ng ")) {
			FUNC0("invalid ref status from remote: %s", reader->line);
			ret = -1;
			break;
		}

		refname = reader->line + 3;
		msg = FUNC5(refname, ' ');
		if (msg)
			*msg++ = '\0';

		/* first try searching at our hint, falling back to all refs */
		if (hint)
			hint = FUNC1(hint, refname);
		if (!hint)
			hint = FUNC1(refs, refname);
		if (!hint) {
			FUNC6("remote reported status on unknown ref: %s",
					refname);
			continue;
		}
		if (hint->status != REF_STATUS_EXPECTING_REPORT) {
			FUNC6("remote reported status on unexpected ref: %s",
					refname);
			continue;
		}

		if (reader->line[0] == 'o' && reader->line[1] == 'k')
			hint->status = REF_STATUS_OK;
		else {
			hint->status = REF_STATUS_REMOTE_REJECT;
			ret = -1;
		}
		hint->remote_status = FUNC7(msg);
		/* start our next search from the next ref */
		hint = hint->next;
	}
	return ret;
}