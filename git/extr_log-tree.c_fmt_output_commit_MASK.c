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
struct strbuf {int /*<<< orphan*/  buf; } ;
struct rev_info {int dummy; } ;
struct pretty_print_context {int /*<<< orphan*/  member_0; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct strbuf*,int /*<<< orphan*/ ,struct rev_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct commit*,char*,struct strbuf*,struct pretty_print_context*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*) ; 

void FUNC3(struct strbuf *filename,
		       struct commit *commit,
		       struct rev_info *info)
{
	struct pretty_print_context ctx = {0};
	struct strbuf subject = STRBUF_INIT;

	FUNC1(commit, "%f", &subject, &ctx);
	FUNC0(filename, subject.buf, info);
	FUNC2(&subject);
}