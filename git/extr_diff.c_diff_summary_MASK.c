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
struct strbuf {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct diff_options {int dummy; } ;
struct diff_filepair {int status; int /*<<< orphan*/  score; TYPE_1__* two; TYPE_1__* one; } ;
struct TYPE_2__ {int /*<<< orphan*/  path; } ;

/* Variables and functions */
#define  DIFF_STATUS_ADDED 131 
#define  DIFF_STATUS_COPIED 130 
#define  DIFF_STATUS_DELETED 129 
#define  DIFF_STATUS_RENAMED 128 
 int /*<<< orphan*/  DIFF_SYMBOL_SUMMARY ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct diff_options*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct strbuf*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct diff_options*,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct diff_options*,struct diff_filepair*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct diff_options*,char*,struct diff_filepair*) ; 
 int /*<<< orphan*/  FUNC5 (struct diff_filepair*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*) ; 

__attribute__((used)) static void FUNC9(struct diff_options *opt, struct diff_filepair *p)
{
	switch(p->status) {
	case DIFF_STATUS_DELETED:
		FUNC2(opt, "delete", p->one);
		break;
	case DIFF_STATUS_ADDED:
		FUNC2(opt, "create", p->two);
		break;
	case DIFF_STATUS_COPIED:
		FUNC4(opt, "copy", p);
		break;
	case DIFF_STATUS_RENAMED:
		FUNC4(opt, "rename", p);
		break;
	default:
		if (p->score) {
			struct strbuf sb = STRBUF_INIT;
			FUNC7(&sb, " rewrite ");
			FUNC1(p->two->path, &sb, NULL, 0);
			FUNC6(&sb, " (%d%%)\n", FUNC5(p));
			FUNC0(opt, DIFF_SYMBOL_SUMMARY,
					 sb.buf, sb.len, 0);
			FUNC8(&sb);
		}
		FUNC3(opt, p, !p->score);
		break;
	}
}