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
struct imap_store {void* uidvalidity; struct imap* imap; } ;
struct imap_cmd_cb {scalar_t__ ctx; } ;
struct imap {void* uidnext; } ;

/* Variables and functions */
 int RESP_BAD ; 
 int RESP_OK ; 
 void* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC2 (unsigned char) ; 
 char* FUNC3 (char**) ; 
 int /*<<< orphan*/  FUNC4 (struct imap*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC5 (char*,char) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

__attribute__((used)) static int FUNC7(struct imap_store *ctx, struct imap_cmd_cb *cb,
			       char *s)
{
	struct imap *imap = ctx->imap;
	char *arg, *p;

	if (!s || *s != '[')
		return RESP_OK;		/* no response code */
	s++;
	if (!(p = FUNC5(s, ']'))) {
		FUNC1(stderr, "IMAP error: malformed response code\n");
		return RESP_BAD;
	}
	*p++ = 0;
	arg = FUNC3(&s);
	if (!arg) {
		FUNC1(stderr, "IMAP error: empty response code\n");
		return RESP_BAD;
	}
	if (!FUNC6("UIDVALIDITY", arg)) {
		if (!(arg = FUNC3(&s)) || !(ctx->uidvalidity = FUNC0(arg))) {
			FUNC1(stderr, "IMAP error: malformed UIDVALIDITY status\n");
			return RESP_BAD;
		}
	} else if (!FUNC6("UIDNEXT", arg)) {
		if (!(arg = FUNC3(&s)) || !(imap->uidnext = FUNC0(arg))) {
			FUNC1(stderr, "IMAP error: malformed NEXTUID status\n");
			return RESP_BAD;
		}
	} else if (!FUNC6("CAPABILITY", arg)) {
		FUNC4(imap, s);
	} else if (!FUNC6("ALERT", arg)) {
		/* RFC2060 says that these messages MUST be displayed
		 * to the user
		 */
		for (; FUNC2((unsigned char)*p); p++);
		FUNC1(stderr, "*** IMAP ALERT *** %s\n", p);
	} else if (cb && cb->ctx && !FUNC6("APPENDUID", arg)) {
		if (!(arg = FUNC3(&s)) || !(ctx->uidvalidity = FUNC0(arg)) ||
		    !(arg = FUNC3(&s)) || !(*(int *)cb->ctx = FUNC0(arg))) {
			FUNC1(stderr, "IMAP error: malformed APPENDUID status\n");
			return RESP_BAD;
		}
	}
	return RESP_OK;
}