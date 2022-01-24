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
struct remote {char const** url; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ EOF ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct strbuf*) ; 
 int dump_from_file ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  marksfilename ; 
 int /*<<< orphan*/  notes_ref ; 
 int /*<<< orphan*/  private_ref ; 
 struct remote* FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (char const*,char*) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*,char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC9 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*) ; 
 int /*<<< orphan*/  url ; 
 int /*<<< orphan*/  FUNC12 (char const*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

int FUNC14(int argc, const char **argv)
{
	struct strbuf buf = STRBUF_INIT, url_sb = STRBUF_INIT,
			private_ref_sb = STRBUF_INIT, marksfilename_sb = STRBUF_INIT,
			notes_ref_sb = STRBUF_INIT;
	static struct remote *remote;
	const char *url_in;

	FUNC6();
	if (argc < 2 || argc > 3) {
		FUNC13("git-remote-svn <remote-name> [<url>]");
		return 1;
	}

	remote = FUNC5(argv[1]);
	url_in = (argc == 3) ? argv[2] : remote->url[0];

	if (FUNC7(url_in, "file://")) {
		dump_from_file = 1;
		url = FUNC12(url_in + sizeof("file://")-1);
	} else {
		dump_from_file = 0;
		FUNC2(&url_sb, url_in);
		url = url_sb.buf;
	}

	FUNC8(&private_ref_sb, "refs/svn/%s/master", remote->name);
	private_ref = private_ref_sb.buf;

	FUNC8(&notes_ref_sb, "refs/notes/%s/revs", remote->name);
	notes_ref = notes_ref_sb.buf;

	FUNC8(&marksfilename_sb, "%s/info/fast-import/remote-svn/%s.marks",
		FUNC4(), remote->name);
	marksfilename = marksfilename_sb.buf;

	while (1) {
		if (FUNC9(&buf, stdin) == EOF) {
			if (FUNC3(stdin))
				FUNC0("Error reading command stream");
			else
				FUNC0("Unexpected end of command stream");
		}
		if (FUNC1(&buf))
			break;
		FUNC11(&buf);
	}

	FUNC10(&buf);
	FUNC10(&url_sb);
	FUNC10(&private_ref_sb);
	FUNC10(&notes_ref_sb);
	FUNC10(&marksfilename_sb);
	return 0;
}