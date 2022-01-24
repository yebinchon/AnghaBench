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
struct rev_note {int rev_nr; int /*<<< orphan*/  member_0; } ;
struct object_id {int dummy; } ;
struct child_process {int out; int /*<<< orphan*/  args; } ;

/* Variables and functions */
 struct child_process CHILD_PROCESS_INIT ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 scalar_t__ dump_from_file ; 
 int FUNC6 (struct child_process*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* marksfilename ; 
 int /*<<< orphan*/  notes_ref ; 
 int FUNC8 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (char*,struct rev_note*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,char*) ; 
 int /*<<< orphan*/  private_ref ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,struct object_id*) ; 
 char* FUNC12 (struct object_id*) ; 
 int FUNC13 (struct child_process*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 char* url ; 
 int /*<<< orphan*/  FUNC18 (char*,char const*,...) ; 

__attribute__((used)) static int FUNC19(const char *line)
{
	int code;
	int dumpin_fd;
	char *note_msg;
	struct object_id head_oid;
	unsigned int startrev;
	struct child_process svndump_proc = CHILD_PROCESS_INIT;
	const char *command = "svnrdump";

	if (FUNC11(private_ref, &head_oid))
		startrev = 0;
	else {
		note_msg = FUNC12(&head_oid);
		if(note_msg == NULL) {
			FUNC18("No note found for %s.", private_ref);
			startrev = 0;
		} else {
			struct rev_note note = { 0 };
			if (FUNC9(note_msg, &note))
				FUNC4("Revision number couldn't be parsed from note.");
			startrev = note.rev_nr + 1;
			FUNC7(note_msg);
		}
	}
	FUNC2(startrev - 1);

	if (dump_from_file) {
		dumpin_fd = FUNC8(url, O_RDONLY);
		if(dumpin_fd < 0)
			FUNC5("Couldn't open svn dump file %s.", url);
	} else {
		svndump_proc.out = -1;
		FUNC0(&svndump_proc.args, command);
		FUNC0(&svndump_proc.args, "dump");
		FUNC0(&svndump_proc.args, url);
		FUNC1(&svndump_proc.args, "-r%u:HEAD", startrev);

		code = FUNC13(&svndump_proc);
		if (code)
			FUNC4("Unable to start %s, code %d", command, code);
		dumpin_fd = svndump_proc.out;
	}
	/* setup marks file import/export */
	FUNC10("feature import-marks-if-exists=%s\n"
			"feature export-marks=%s\n", marksfilename, marksfilename);

	FUNC15(dumpin_fd, STDIN_FILENO);
	FUNC16(url, private_ref, notes_ref);
	FUNC14();
	FUNC17();

	FUNC3(dumpin_fd);
	if (!dump_from_file) {
		code = FUNC6(&svndump_proc);
		if (code)
			FUNC18("%s, returned %d", command, code);
	}

	return 0;
}