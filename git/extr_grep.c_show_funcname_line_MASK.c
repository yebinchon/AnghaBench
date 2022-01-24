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
struct grep_source {char* buf; int /*<<< orphan*/  name; } ;
struct grep_opt {unsigned int last_shown; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct grep_opt*,struct grep_source*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct grep_opt*,char*,char*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,char) ; 

__attribute__((used)) static void FUNC2(struct grep_opt *opt, struct grep_source *gs,
			       char *bol, unsigned lno)
{
	while (bol > gs->buf) {
		char *eol = --bol;

		while (bol > gs->buf && bol[-1] != '\n')
			bol--;
		lno--;

		if (lno <= opt->last_shown)
			break;

		if (FUNC0(opt, gs, bol, eol)) {
			FUNC1(opt, bol, eol, gs->name, lno, 0, '=');
			break;
		}
	}
}