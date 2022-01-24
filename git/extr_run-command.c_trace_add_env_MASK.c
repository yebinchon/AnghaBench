#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct string_list {int nr; TYPE_1__* items; } ;
struct strbuf {char const* const buf; } ;
struct TYPE_4__ {char* util; } ;
struct TYPE_3__ {char* string; char* util; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 struct string_list STRING_LIST_INIT_DUP ; 
 char* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char const* const,int) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 
 char* FUNC7 (char const* const,char) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (struct string_list*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC10 (struct string_list*,char const* const) ; 

__attribute__((used)) static void FUNC11(struct strbuf *dst, const char *const *deltaenv)
{
	struct string_list envs = STRING_LIST_INIT_DUP;
	const char *const *e;
	int i;
	int printed_unset = 0;

	/* Last one wins, see run-command.c:prep_childenv() for context */
	for (e = deltaenv; e && *e; e++) {
		struct strbuf key = STRBUF_INIT;
		char *equals = FUNC7(*e, '=');

		if (equals) {
			FUNC2(&key, *e, equals - *e);
			FUNC10(&envs, key.buf)->util = equals + 1;
		} else {
			FUNC10(&envs, *e)->util = NULL;
		}
		FUNC6(&key);
	}

	/* "unset X Y...;" */
	for (i = 0; i < envs.nr; i++) {
		const char *var = envs.items[i].string;
		const char *val = envs.items[i].util;

		if (val || !FUNC0(var))
			continue;

		if (!printed_unset) {
			FUNC5(dst, " unset");
			printed_unset = 1;
		}
		FUNC4(dst, " %s", var);
	}
	if (printed_unset)
		FUNC3(dst, ';');

	/* ... followed by "A=B C=D ..." */
	for (i = 0; i < envs.nr; i++) {
		const char *var = envs.items[i].string;
		const char *val = envs.items[i].util;
		const char *oldval;

		if (!val)
			continue;

		oldval = FUNC0(var);
		if (oldval && !FUNC8(val, oldval))
			continue;

		FUNC4(dst, " %s=", var);
		FUNC1(dst, val);
	}
	FUNC9(&envs, 0);
}