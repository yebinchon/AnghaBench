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
struct string_list {int nr; TYPE_1__* items; } ;
struct strbuf {int /*<<< orphan*/  buf; } ;
struct TYPE_2__ {int /*<<< orphan*/  string; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 struct string_list STRING_LIST_INIT_DUP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct string_list*) ; 
 int /*<<< orphan*/  FUNC3 (struct string_list*) ; 
 int /*<<< orphan*/  FUNC4 (struct string_list*) ; 
 int /*<<< orphan*/  FUNC5 (struct string_list*) ; 
 int /*<<< orphan*/  FUNC6 (struct string_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct string_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct string_list*) ; 
 scalar_t__ FUNC9 (char const*,int,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int*) ; 
 int /*<<< orphan*/  FUNC12 (struct strbuf*,char const*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct strbuf*) ; 
 char* FUNC14 (char const*,char) ; 
 int /*<<< orphan*/  FUNC15 (struct string_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char const*,char*,int) ; 

__attribute__((used)) static int FUNC17(const char *spec)
{
	struct string_list list = STRING_LIST_INIT_DUP;
	int i;
	int nongit;

	/*
	* Set up the repository so we can pick up any repo-level config (like
	* completion.commands).
	*/
	FUNC11(&nongit);

	while (*spec) {
		const char *sep = FUNC14(spec, ',');
		int len = sep - spec;

		if (FUNC9(spec, len, "builtins"))
			FUNC6(&list, 0);
		else if (FUNC9(spec, len, "main"))
			FUNC4(&list);
		else if (FUNC9(spec, len, "others"))
			FUNC5(&list);
		else if (FUNC9(spec, len, "nohelpers"))
			FUNC2(&list);
		else if (FUNC9(spec, len, "alias"))
			FUNC3(&list);
		else if (FUNC9(spec, len, "config"))
			FUNC8(&list);
		else if (len > 5 && !FUNC16(spec, "list-", 5)) {
			struct strbuf sb = STRBUF_INIT;

			FUNC12(&sb, spec + 5, len - 5);
			FUNC7(&list, sb.buf);
			FUNC13(&sb);
		}
		else
			FUNC1(FUNC0("unsupported command listing type '%s'"), spec);
		spec += len;
		if (*spec == ',')
			spec++;
	}
	for (i = 0; i < list.nr; i++)
		FUNC10(list.items[i].string);
	FUNC15(&list, 0);
	return 0;
}