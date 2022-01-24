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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char,char const*,char) ; 
 char* FUNC1 (char*,int /*<<< orphan*/ ,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*) ; 

__attribute__((used)) static void FUNC3(
	struct string_list_item *it,
	struct wt_status *s,
	char prefix)
{
	struct strbuf buf = STRBUF_INIT;
	const char *path;
	char eol_char;

	if (s->null_termination) {
		path = it->string;
		eol_char = '\0';
	} else {
		path = FUNC1(it->string, s->prefix, &buf);
		eol_char = '\n';
	}

	FUNC0(s->fp, "%c %s%c", prefix, path, eol_char);

	FUNC2(&buf);
}