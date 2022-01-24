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
struct strbuf {char* buf; } ;
struct TYPE_2__ {int /*<<< orphan*/  type; } ;
struct pretty_print_context {TYPE_1__ date_mode; int /*<<< orphan*/  member_0; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DATE_NORMAL ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct commit*,char*,struct strbuf*,struct pretty_print_context*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*) ; 

__attribute__((used)) static void FUNC3(struct commit *commit)
{
	struct strbuf sb = STRBUF_INIT;
	struct pretty_print_context ctx = {0};
	ctx.date_mode.type = DATE_NORMAL;
	FUNC0(commit, " %m %s", &sb, &ctx);
	FUNC1("%s\n", sb.buf);
	FUNC2(&sb);
}