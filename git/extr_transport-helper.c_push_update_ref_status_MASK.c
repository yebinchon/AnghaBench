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
struct strbuf {char* buf; } ;
struct ref {int status; int forced_update; char* remote_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int REF_STATUS_NONE ; 
 int REF_STATUS_OK ; 
 int REF_STATUS_REJECT_ALREADY_EXISTS ; 
 int REF_STATUS_REJECT_FETCH_FIRST ; 
 int REF_STATUS_REJECT_NEEDS_FORCE ; 
 int REF_STATUS_REJECT_NONFASTFORWARD ; 
 int REF_STATUS_REJECT_STALE ; 
 int REF_STATUS_REMOTE_REJECT ; 
 int REF_STATUS_UPTODATE ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct ref* FUNC3 (struct ref*,char*) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 char* FUNC5 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 
 char* FUNC7 (char*,char) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC11 (char*) ; 

__attribute__((used)) static int FUNC12(struct strbuf *buf,
				   struct ref **ref,
				   struct ref *remote_refs)
{
	char *refname, *msg;
	int status, forced = 0;

	if (FUNC4(buf->buf, "ok ")) {
		status = REF_STATUS_OK;
		refname = buf->buf + 3;
	} else if (FUNC4(buf->buf, "error ")) {
		status = REF_STATUS_REMOTE_REJECT;
		refname = buf->buf + 6;
	} else
		FUNC2(FUNC1("expected ok/error, helper said '%s'"), buf->buf);

	msg = FUNC7(refname, ' ');
	if (msg) {
		struct strbuf msg_buf = STRBUF_INIT;
		const char *end;

		*msg++ = '\0';
		if (!FUNC9(&msg_buf, msg, &end))
			msg = FUNC5(&msg_buf, NULL);
		else
			msg = FUNC11(msg);
		FUNC6(&msg_buf);

		if (!FUNC8(msg, "no match")) {
			status = REF_STATUS_NONE;
			FUNC0(msg);
		}
		else if (!FUNC8(msg, "up to date")) {
			status = REF_STATUS_UPTODATE;
			FUNC0(msg);
		}
		else if (!FUNC8(msg, "non-fast forward")) {
			status = REF_STATUS_REJECT_NONFASTFORWARD;
			FUNC0(msg);
		}
		else if (!FUNC8(msg, "already exists")) {
			status = REF_STATUS_REJECT_ALREADY_EXISTS;
			FUNC0(msg);
		}
		else if (!FUNC8(msg, "fetch first")) {
			status = REF_STATUS_REJECT_FETCH_FIRST;
			FUNC0(msg);
		}
		else if (!FUNC8(msg, "needs force")) {
			status = REF_STATUS_REJECT_NEEDS_FORCE;
			FUNC0(msg);
		}
		else if (!FUNC8(msg, "stale info")) {
			status = REF_STATUS_REJECT_STALE;
			FUNC0(msg);
		}
		else if (!FUNC8(msg, "forced update")) {
			forced = 1;
			FUNC0(msg);
		}
	}

	if (*ref)
		*ref = FUNC3(*ref, refname);
	if (!*ref)
		*ref = FUNC3(remote_refs, refname);
	if (!*ref) {
		FUNC10(FUNC1("helper reported unexpected status of %s"), refname);
		return 1;
	}

	if ((*ref)->status != REF_STATUS_NONE) {
		/*
		 * Earlier, the ref was marked not to be pushed, so ignore the ref
		 * status reported by the remote helper if the latter is 'no match'.
		 */
		if (status == REF_STATUS_NONE)
			return 1;
	}

	(*ref)->status = status;
	(*ref)->forced_update |= forced;
	(*ref)->remote_status = msg;
	return !(status == REF_STATUS_OK);
}