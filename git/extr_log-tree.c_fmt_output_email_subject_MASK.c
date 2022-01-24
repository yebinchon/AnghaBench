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
struct rev_info {scalar_t__ total; scalar_t__* subject_prefix; int /*<<< orphan*/  nr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char*,scalar_t__*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char*) ; 

void FUNC3(struct strbuf *sb, struct rev_info *opt)
{
	if (opt->total > 0) {
		FUNC1(sb, "Subject: [%s%s%0*d/%d] ",
			    opt->subject_prefix,
			    *opt->subject_prefix ? " " : "",
			    FUNC0(opt->total),
			    opt->nr, opt->total);
	} else if (opt->total == 0 && opt->subject_prefix && *opt->subject_prefix) {
		FUNC1(sb, "Subject: [%s] ",
			    opt->subject_prefix);
	} else {
		FUNC2(sb, "Subject: ");
	}
}