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
struct stat {int st_mode; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int S_IWUSR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (char const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*) ; 
 char* FUNC9 (char const*,char) ; 
 int /*<<< orphan*/  trailers_tempfile ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static FILE *FUNC11(const char *file)
{
	struct stat st;
	struct strbuf filename_template = STRBUF_INIT;
	const char *tail;
	FILE *outfile;

	if (FUNC5(file, &st))
		FUNC3(FUNC1("could not stat %s"), file);
	if (!FUNC0(st.st_mode))
		FUNC2(FUNC1("file %s is not a regular file"), file);
	if (!(st.st_mode & S_IWUSR))
		FUNC2(FUNC1("file %s is not writable by user"), file);

	/* Create temporary file in the same directory as the original */
	tail = FUNC9(file, '/');
	if (tail != NULL)
		FUNC6(&filename_template, file, tail - file + 1);
	FUNC7(&filename_template, "git-interpret-trailers-XXXXXX");

	trailers_tempfile = FUNC10(filename_template.buf, st.st_mode);
	FUNC8(&filename_template);
	outfile = FUNC4(trailers_tempfile, "w");
	if (!outfile)
		FUNC3(FUNC1("could not open temporary file"));

	return outfile;
}