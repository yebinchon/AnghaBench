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
struct wt_status {int /*<<< orphan*/  fp; int /*<<< orphan*/  prefix; scalar_t__ null_termination; } ;
struct string_list_item {char* string; } ;
struct strbuf {int dummy; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  WT_STATUS_UNTRACKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct wt_status*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 char* FUNC4 (char*,int /*<<< orphan*/ ,struct strbuf*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 

__attribute__((used)) static void FUNC6(struct string_list_item *it,
				 struct wt_status *s, const char *sign)
{
	if (s->null_termination) {
		FUNC2(stdout, "%s %s%c", sign, it->string, 0);
	} else {
		struct strbuf onebuf = STRBUF_INIT;
		const char *one;
		one = FUNC4(it->string, s->prefix, &onebuf);
		FUNC1(s->fp, FUNC0(WT_STATUS_UNTRACKED, s), "%s", sign);
		FUNC3(" %s\n", one);
		FUNC5(&onebuf);
	}
}