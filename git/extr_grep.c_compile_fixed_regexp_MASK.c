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
struct grep_pat {int /*<<< orphan*/  regexp; int /*<<< orphan*/  pattern; } ;
struct grep_opt {scalar_t__ debug; scalar_t__ ignore_case; } ;
typedef  int /*<<< orphan*/  errbuf ;

/* Variables and functions */
 int REG_ICASE ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct grep_pat*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 

__attribute__((used)) static void FUNC6(struct grep_pat *p, struct grep_opt *opt)
{
	struct strbuf sb = STRBUF_INIT;
	int err;
	int regflags = 0;

	FUNC0(&sb, p->pattern);
	if (opt->ignore_case)
		regflags |= REG_ICASE;
	err = FUNC3(&p->regexp, sb.buf, regflags);
	if (opt->debug)
		FUNC2(stderr, "fixed %s\n", sb.buf);
	FUNC5(&sb);
	if (err) {
		char errbuf[1024];
		FUNC4(err, &p->regexp, errbuf, sizeof(errbuf));
		FUNC1(p, errbuf);
	}
}