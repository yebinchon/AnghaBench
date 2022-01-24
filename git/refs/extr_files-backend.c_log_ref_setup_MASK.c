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
struct files_ref_store {int dummy; } ;

/* Variables and functions */
 scalar_t__ EISDIR ; 
 scalar_t__ ENOENT ; 
 int O_APPEND ; 
 int O_WRONLY ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (struct files_ref_store*,struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char*,int,int) ; 
 int /*<<< orphan*/  open_or_create_logfile ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,char*,char*,...) ; 
 char* FUNC7 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct files_ref_store *refs,
			 const char *refname, int force_create,
			 int *logfd, struct strbuf *err)
{
	struct strbuf logfile_sb = STRBUF_INIT;
	char *logfile;

	FUNC1(refs, &logfile_sb, refname);
	logfile = FUNC7(&logfile_sb, NULL);

	if (force_create || FUNC5(refname)) {
		if (FUNC4(logfile, open_or_create_logfile, logfd)) {
			if (errno == ENOENT)
				FUNC6(err, "unable to create directory for '%s': "
					    "%s", logfile, FUNC8(errno));
			else if (errno == EISDIR)
				FUNC6(err, "there are still logs under '%s'",
					    logfile);
			else
				FUNC6(err, "unable to append to '%s': %s",
					    logfile, FUNC8(errno));

			goto error;
		}
	} else {
		*logfd = FUNC3(logfile, O_APPEND | O_WRONLY, 0666);
		if (*logfd < 0) {
			if (errno == ENOENT || errno == EISDIR) {
				/*
				 * The logfile doesn't already exist,
				 * but that is not an error; it only
				 * means that we won't write log
				 * entries to it.
				 */
				;
			} else {
				FUNC6(err, "unable to append to '%s': %s",
					    logfile, FUNC8(errno));
				goto error;
			}
		}
	}

	if (*logfd >= 0)
		FUNC0(logfile);

	FUNC2(logfile);
	return 0;

error:
	FUNC2(logfile);
	return -1;
}