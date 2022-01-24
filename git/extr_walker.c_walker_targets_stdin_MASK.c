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

/* Variables and functions */
 scalar_t__ EOF ; 
 int /*<<< orphan*/  FUNC0 (char const**,int) ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  stdin ; 
 scalar_t__ FUNC1 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*) ; 
 char* FUNC3 (char*,char) ; 
 char* FUNC4 (char*) ; 
 char* FUNC5 (char*) ; 

int FUNC6(char ***target, const char ***write_ref)
{
	int targets = 0, targets_alloc = 0;
	struct strbuf buf = STRBUF_INIT;
	*target = NULL; *write_ref = NULL;
	while (1) {
		char *rf_one = NULL;
		char *tg_one;

		if (FUNC1(&buf, stdin) == EOF)
			break;
		tg_one = buf.buf;
		rf_one = FUNC3(tg_one, '\t');
		if (rf_one)
			*rf_one++ = 0;

		if (targets >= targets_alloc) {
			targets_alloc = targets_alloc ? targets_alloc * 2 : 64;
			FUNC0(*target, targets_alloc);
			FUNC0(*write_ref, targets_alloc);
		}
		(*target)[targets] = FUNC4(tg_one);
		(*write_ref)[targets] = FUNC5(rf_one);
		targets++;
	}
	FUNC2(&buf);
	return targets;
}