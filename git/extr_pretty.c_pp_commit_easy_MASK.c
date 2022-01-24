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
struct pretty_print_context {int fmt; int /*<<< orphan*/  member_0; } ;
struct commit {int dummy; } ;
typedef  enum cmit_fmt { ____Placeholder_cmit_fmt } cmit_fmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pretty_print_context*,struct commit const*,struct strbuf*) ; 

void FUNC1(enum cmit_fmt fmt, const struct commit *commit,
		    struct strbuf *sb)
{
	struct pretty_print_context pp = {0};
	pp.fmt = fmt;
	FUNC0(&pp, commit, sb);
}