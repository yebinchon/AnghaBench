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
struct strbuf {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  file; } ;
struct rev_info {int shown_dashes; TYPE_1__ diffopt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char const*) ; 

__attribute__((used)) static void FUNC2(struct rev_info *opt, struct strbuf *sb)
{
	const char *x = opt->shown_dashes ? "\n" : "---\n";
	if (sb)
		FUNC1(sb, x);
	else
		FUNC0(x, opt->diffopt.file);
	opt->shown_dashes = 1;
}