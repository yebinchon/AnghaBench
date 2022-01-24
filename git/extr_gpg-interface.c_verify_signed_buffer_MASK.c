#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  buf; } ;
struct tempfile {TYPE_1__ filename; int /*<<< orphan*/  fd; } ;
struct strbuf {int /*<<< orphan*/  buf; } ;
struct gpg_format {int /*<<< orphan*/  verify_args; int /*<<< orphan*/  program; } ;
struct child_process {int /*<<< orphan*/  args; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 struct child_process CHILD_PROCESS_INIT ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIG_IGN ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct tempfile*) ; 
 int /*<<< orphan*/  FUNC6 (struct tempfile**) ; 
 int FUNC7 (int /*<<< orphan*/ ,...) ; 
 struct gpg_format* FUNC8 (char const*) ; 
 struct tempfile* FUNC9 (char*) ; 
 int FUNC10 (struct child_process*,char const*,size_t,struct strbuf*,int /*<<< orphan*/ ,struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,char const*,size_t) ; 

int FUNC16(const char *payload, size_t payload_size,
			 const char *signature, size_t signature_size,
			 struct strbuf *gpg_output, struct strbuf *gpg_status)
{
	struct child_process gpg = CHILD_PROCESS_INIT;
	struct gpg_format *fmt;
	struct tempfile *temp;
	int ret;
	struct strbuf buf = STRBUF_INIT;

	temp = FUNC9(".git_vtag_tmpXXXXXX");
	if (!temp)
		return FUNC7(FUNC1("could not create temporary file"));
	if (FUNC15(temp->fd, signature, signature_size) < 0 ||
	    FUNC5(temp) < 0) {
		FUNC7(FUNC1("failed writing detached signature to '%s'"),
			    temp->filename.buf);
		FUNC6(&temp);
		return -1;
	}

	fmt = FUNC8(signature);
	if (!fmt)
		FUNC0("bad signature '%s'", signature);

	FUNC2(&gpg.args, fmt->program);
	FUNC4(&gpg.args, fmt->verify_args);
	FUNC3(&gpg.args,
			 "--status-fd=1",
			 "--verify", temp->filename.buf, "-",
			 NULL);

	if (!gpg_status)
		gpg_status = &buf;

	FUNC12(SIGPIPE, SIG_IGN);
	ret = FUNC10(&gpg, payload, payload_size,
			   gpg_status, 0, gpg_output, 0);
	FUNC11(SIGPIPE);

	FUNC6(&temp);

	ret |= !FUNC14(gpg_status->buf, "\n[GNUPG:] GOODSIG ");
	FUNC13(&buf); /* no matter it was used or not */

	return ret;
}