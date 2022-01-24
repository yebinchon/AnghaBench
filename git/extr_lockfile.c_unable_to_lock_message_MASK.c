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
 int EEXIST ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void FUNC4(const char *path, int err, struct strbuf *buf)
{
	if (err == EEXIST) {
		FUNC2(buf, FUNC0("Unable to create '%s.lock': %s.\n\n"
		    "Another git process seems to be running in this repository, e.g.\n"
		    "an editor opened by 'git commit'. Please make sure all processes\n"
		    "are terminated then try again. If it still fails, a git process\n"
		    "may have crashed in this repository earlier:\n"
		    "remove the file manually to continue."),
			    FUNC1(path), FUNC3(err));
	} else
		FUNC2(buf, FUNC0("Unable to create '%s.lock': %s"),
			    FUNC1(path), FUNC3(err));
}