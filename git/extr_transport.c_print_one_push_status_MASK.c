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
struct ref {int status; char* remote_status; int /*<<< orphan*/ * peer_ref; int /*<<< orphan*/  deletion; } ;

/* Variables and functions */
#define  REF_STATUS_ATOMIC_PUSH_FAILED 140 
#define  REF_STATUS_EXPECTING_REPORT 139 
#define  REF_STATUS_NONE 138 
#define  REF_STATUS_OK 137 
#define  REF_STATUS_REJECT_ALREADY_EXISTS 136 
#define  REF_STATUS_REJECT_FETCH_FIRST 135 
#define  REF_STATUS_REJECT_NEEDS_FORCE 134 
#define  REF_STATUS_REJECT_NODELETE 133 
#define  REF_STATUS_REJECT_NONFASTFORWARD 132 
#define  REF_STATUS_REJECT_SHALLOW 131 
#define  REF_STATUS_REJECT_STALE 130 
#define  REF_STATUS_REMOTE_REJECT 129 
#define  REF_STATUS_UPTODATE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ref*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char,char*,struct ref*,int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 char* FUNC4 (char const*) ; 

__attribute__((used)) static int FUNC5(struct ref *ref, const char *dest, int count,
				 int porcelain, int summary_width)
{
	if (!count) {
		char *url = FUNC4(dest);
		FUNC0(porcelain ? stdout : stderr, "To %s\n", url);
		FUNC1(url);
	}

	switch(ref->status) {
	case REF_STATUS_NONE:
		FUNC3('X', "[no match]", ref, NULL, NULL,
				 porcelain, summary_width);
		break;
	case REF_STATUS_REJECT_NODELETE:
		FUNC3('!', "[rejected]", ref, NULL,
				 "remote does not support deleting refs",
				 porcelain, summary_width);
		break;
	case REF_STATUS_UPTODATE:
		FUNC3('=', "[up to date]", ref,
				 ref->peer_ref, NULL, porcelain, summary_width);
		break;
	case REF_STATUS_REJECT_NONFASTFORWARD:
		FUNC3('!', "[rejected]", ref, ref->peer_ref,
				 "non-fast-forward", porcelain, summary_width);
		break;
	case REF_STATUS_REJECT_ALREADY_EXISTS:
		FUNC3('!', "[rejected]", ref, ref->peer_ref,
				 "already exists", porcelain, summary_width);
		break;
	case REF_STATUS_REJECT_FETCH_FIRST:
		FUNC3('!', "[rejected]", ref, ref->peer_ref,
				 "fetch first", porcelain, summary_width);
		break;
	case REF_STATUS_REJECT_NEEDS_FORCE:
		FUNC3('!', "[rejected]", ref, ref->peer_ref,
				 "needs force", porcelain, summary_width);
		break;
	case REF_STATUS_REJECT_STALE:
		FUNC3('!', "[rejected]", ref, ref->peer_ref,
				 "stale info", porcelain, summary_width);
		break;
	case REF_STATUS_REJECT_SHALLOW:
		FUNC3('!', "[rejected]", ref, ref->peer_ref,
				 "new shallow roots not allowed",
				 porcelain, summary_width);
		break;
	case REF_STATUS_REMOTE_REJECT:
		FUNC3('!', "[remote rejected]", ref,
				 ref->deletion ? NULL : ref->peer_ref,
				 ref->remote_status, porcelain, summary_width);
		break;
	case REF_STATUS_EXPECTING_REPORT:
		FUNC3('!', "[remote failure]", ref,
				 ref->deletion ? NULL : ref->peer_ref,
				 "remote failed to report status",
				 porcelain, summary_width);
		break;
	case REF_STATUS_ATOMIC_PUSH_FAILED:
		FUNC3('!', "[rejected]", ref, ref->peer_ref,
				 "atomic push failed", porcelain, summary_width);
		break;
	case REF_STATUS_OK:
		FUNC2(ref, porcelain, summary_width);
		break;
	}

	return 1;
}