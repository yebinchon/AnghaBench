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

/* Variables and functions */
 int PROMPT_ASKPASS ; 
 int PROMPT_ECHO ; 
 char* askpass_program ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,char const*) ; 
 char* FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  errno ; 
 char* FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,int) ; 
 char* FUNC4 (char const*,int) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 

char *FUNC6(const char *prompt, int flags)
{
	char *r = NULL;

	if (flags & PROMPT_ASKPASS) {
		const char *askpass;

		askpass = FUNC2("GIT_ASKPASS");
		if (!askpass)
			askpass = askpass_program;
		if (!askpass)
			askpass = FUNC2("SSH_ASKPASS");
		if (askpass && *askpass)
			r = FUNC1(askpass, prompt);
	}

	if (!r) {
		const char *err;

		if (FUNC3("GIT_TERMINAL_PROMPT", 1)) {
			r = FUNC4(prompt, flags & PROMPT_ECHO);
			err = FUNC5(errno);
		} else {
			err = "terminal prompts disabled";
		}
		if (!r) {
			/* prompts already contain ": " at the end */
			FUNC0("could not read %s%s", prompt, err);
		}
	}
	return r;
}