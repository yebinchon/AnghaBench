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
struct files_ref_store {int /*<<< orphan*/  gitcommondir; int /*<<< orphan*/  gitdir; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char const*) ; 
#define  REF_TYPE_MAIN_PSEUDOREF 132 
#define  REF_TYPE_NORMAL 131 
#define  REF_TYPE_OTHER_PSEUDOREF 130 
#define  REF_TYPE_PER_WORKTREE 129 
#define  REF_TYPE_PSEUDOREF 128 
 int /*<<< orphan*/  FUNC1 (struct files_ref_store*,struct strbuf*,char const*) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char*,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static void FUNC4(struct files_ref_store *refs,
			      struct strbuf *sb,
			      const char *refname)
{
	switch (FUNC2(refname)) {
	case REF_TYPE_PER_WORKTREE:
	case REF_TYPE_PSEUDOREF:
		FUNC3(sb, "%s/logs/%s", refs->gitdir, refname);
		break;
	case REF_TYPE_OTHER_PSEUDOREF:
	case REF_TYPE_MAIN_PSEUDOREF:
		FUNC1(refs, sb, refname);
		break;
	case REF_TYPE_NORMAL:
		FUNC3(sb, "%s/logs/%s", refs->gitcommondir, refname);
		break;
	default:
		FUNC0("unknown ref type %d of ref %s",
		    FUNC2(refname), refname);
	}
}