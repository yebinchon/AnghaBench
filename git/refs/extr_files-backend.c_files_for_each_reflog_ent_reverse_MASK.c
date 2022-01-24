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
struct strbuf {scalar_t__ len; int /*<<< orphan*/  buf; } ;
struct ref_store {int dummy; } ;
struct files_ref_store {int dummy; } ;
typedef  int /*<<< orphan*/  each_reflog_ent_fn ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BUFSIZ ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  REF_STORE_READ ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct files_ref_store* FUNC3 (struct ref_store*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct files_ref_store*,struct strbuf*,char const*) ; 
 char* FUNC5 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,char*) ; 
 size_t FUNC7 (char*,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ ) ; 
 long FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (struct strbuf*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC12 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC13 (struct strbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 char* FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct ref_store *ref_store,
					     const char *refname,
					     each_reflog_ent_fn fn,
					     void *cb_data)
{
	struct files_ref_store *refs =
		FUNC3(ref_store, REF_STORE_READ,
			       "for_each_reflog_ent_reverse");
	struct strbuf sb = STRBUF_INIT;
	FILE *logfp;
	long pos;
	int ret = 0, at_tail = 1;

	FUNC4(refs, &sb, refname);
	logfp = FUNC6(sb.buf, "r");
	FUNC11(&sb);
	if (!logfp)
		return -1;

	/* Jump to the end */
	if (FUNC8(logfp, 0, SEEK_END) < 0)
		ret = FUNC1("cannot seek back reflog for %s: %s",
			    refname, FUNC14(errno));
	pos = FUNC9(logfp);
	while (!ret && 0 < pos) {
		int cnt;
		size_t nread;
		char buf[BUFSIZ];
		char *endp, *scanp;

		/* Fill next block from the end */
		cnt = (sizeof(buf) < pos) ? sizeof(buf) : pos;
		if (FUNC8(logfp, pos - cnt, SEEK_SET)) {
			ret = FUNC1("cannot seek back reflog for %s: %s",
				    refname, FUNC14(errno));
			break;
		}
		nread = FUNC7(buf, cnt, 1, logfp);
		if (nread != 1) {
			ret = FUNC1("cannot read %d bytes from reflog for %s: %s",
				    cnt, refname, FUNC14(errno));
			break;
		}
		pos -= cnt;

		scanp = endp = buf + cnt;
		if (at_tail && scanp[-1] == '\n')
			/* Looking at the final LF at the end of the file */
			scanp--;
		at_tail = 0;

		while (buf < scanp) {
			/*
			 * terminating LF of the previous line, or the beginning
			 * of the buffer.
			 */
			char *bp;

			bp = FUNC5(buf, scanp);

			if (*bp == '\n') {
				/*
				 * The newline is the end of the previous line,
				 * so we know we have complete line starting
				 * at (bp + 1). Prefix it onto any prior data
				 * we collected for the line and process it.
				 */
				FUNC13(&sb, 0, 0, bp + 1, endp - (bp + 1));
				scanp = bp;
				endp = bp + 1;
				ret = FUNC10(&sb, fn, cb_data);
				FUNC12(&sb);
				if (ret)
					break;
			} else if (!pos) {
				/*
				 * We are at the start of the buffer, and the
				 * start of the file; there is no previous
				 * line, and we have everything for this one.
				 * Process it, and we can end the loop.
				 */
				FUNC13(&sb, 0, 0, buf, endp - buf);
				ret = FUNC10(&sb, fn, cb_data);
				FUNC12(&sb);
				break;
			}

			if (bp == buf) {
				/*
				 * We are at the start of the buffer, and there
				 * is more file to read backwards. Which means
				 * we are in the middle of a line. Note that we
				 * may get here even if *bp was a newline; that
				 * just means we are at the exact end of the
				 * previous line, rather than some spot in the
				 * middle.
				 *
				 * Save away what we have to be combined with
				 * the data from the next read.
				 */
				FUNC13(&sb, 0, 0, buf, endp - buf);
				break;
			}
		}

	}
	if (!ret && sb.len)
		FUNC0("reverse reflog parser had leftover data");

	FUNC2(logfp);
	FUNC11(&sb);
	return ret;
}