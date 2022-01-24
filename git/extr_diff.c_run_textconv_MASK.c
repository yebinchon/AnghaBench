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
struct repository {int dummy; } ;
struct diff_tempfile {int /*<<< orphan*/  name; } ;
struct diff_filespec {int /*<<< orphan*/  path; } ;
struct child_process {int use_shell; char const** argv; int out; } ;

/* Variables and functions */
 struct child_process CHILD_PROCESS_INIT ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*,char const*) ; 
 scalar_t__ FUNC2 (struct child_process*) ; 
 struct diff_tempfile* FUNC3 (struct repository*,int /*<<< orphan*/ ,struct diff_filespec*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (struct child_process*) ; 
 char* FUNC6 (struct strbuf*,size_t*) ; 
 scalar_t__ FUNC7 (struct strbuf*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*) ; 

__attribute__((used)) static char *FUNC9(struct repository *r,
			  const char *pgm,
			  struct diff_filespec *spec,
			  size_t *outsize)
{
	struct diff_tempfile *temp;
	const char *argv[3];
	const char **arg = argv;
	struct child_process child = CHILD_PROCESS_INIT;
	struct strbuf buf = STRBUF_INIT;
	int err = 0;

	temp = FUNC3(r, spec->path, spec);
	*arg++ = pgm;
	*arg++ = temp->name;
	*arg = NULL;

	child.use_shell = 1;
	child.argv = argv;
	child.out = -1;
	if (FUNC5(&child)) {
		FUNC4();
		return NULL;
	}

	if (FUNC7(&buf, child.out, 0) < 0)
		err = FUNC1("error reading from textconv command '%s'", pgm);
	FUNC0(child.out);

	if (FUNC2(&child) || err) {
		FUNC8(&buf);
		FUNC4();
		return NULL;
	}
	FUNC4();

	return FUNC6(&buf, outsize);
}