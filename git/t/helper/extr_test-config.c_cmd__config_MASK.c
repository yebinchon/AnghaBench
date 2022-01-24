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
struct config_set {int dummy; } ;
struct TYPE_2__ {char* string; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  early_config_cb ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char const**) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char const**) ; 
 struct string_list* FUNC7 (char const*) ; 
 int FUNC8 (struct config_set*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (struct config_set*) ; 
 int /*<<< orphan*/  FUNC10 (struct config_set*,char const*,char const**) ; 
 struct string_list* FUNC11 (struct config_set*,char const*) ; 
 int /*<<< orphan*/  FUNC12 (struct config_set*) ; 
 int /*<<< orphan*/  iterate_cb ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC16 (char const*,char*) ; 

int FUNC17(int argc, const char **argv)
{
	int i, val;
	const char *v;
	const struct string_list *strptr;
	struct config_set cs;

	if (argc == 3 && !FUNC16(argv[1], "read_early_config")) {
		FUNC14(early_config_cb, (void *)argv[2]);
		return 0;
	}

	FUNC15();

	FUNC12(&cs);

	if (argc < 2) {
		FUNC1(stderr, "Please, provide a command name on the command-line\n");
		goto exit1;
	} else if (argc == 3 && !FUNC16(argv[1], "get_value")) {
		if (!FUNC6(argv[2], &v)) {
			if (!v)
				FUNC13("(NULL)\n");
			else
				FUNC13("%s\n", v);
			goto exit0;
		} else {
			FUNC13("Value not found for \"%s\"\n", argv[2]);
			goto exit1;
		}
	} else if (argc == 3 && !FUNC16(argv[1], "get_value_multi")) {
		strptr = FUNC7(argv[2]);
		if (strptr) {
			for (i = 0; i < strptr->nr; i++) {
				v = strptr->items[i].string;
				if (!v)
					FUNC13("(NULL)\n");
				else
					FUNC13("%s\n", v);
			}
			goto exit0;
		} else {
			FUNC13("Value not found for \"%s\"\n", argv[2]);
			goto exit1;
		}
	} else if (argc == 3 && !FUNC16(argv[1], "get_int")) {
		if (!FUNC4(argv[2], &val)) {
			FUNC13("%d\n", val);
			goto exit0;
		} else {
			FUNC13("Value not found for \"%s\"\n", argv[2]);
			goto exit1;
		}
	} else if (argc == 3 && !FUNC16(argv[1], "get_bool")) {
		if (!FUNC3(argv[2], &val)) {
			FUNC13("%d\n", val);
			goto exit0;
		} else {
			FUNC13("Value not found for \"%s\"\n", argv[2]);
			goto exit1;
		}
	} else if (argc == 3 && !FUNC16(argv[1], "get_string")) {
		if (!FUNC5(argv[2], &v)) {
			FUNC13("%s\n", v);
			goto exit0;
		} else {
			FUNC13("Value not found for \"%s\"\n", argv[2]);
			goto exit1;
		}
	} else if (!FUNC16(argv[1], "configset_get_value")) {
		for (i = 3; i < argc; i++) {
			int err;
			if ((err = FUNC8(&cs, argv[i]))) {
				FUNC1(stderr, "Error (%d) reading configuration file %s.\n", err, argv[i]);
				goto exit2;
			}
		}
		if (!FUNC10(&cs, argv[2], &v)) {
			if (!v)
				FUNC13("(NULL)\n");
			else
				FUNC13("%s\n", v);
			goto exit0;
		} else {
			FUNC13("Value not found for \"%s\"\n", argv[2]);
			goto exit1;
		}
	} else if (!FUNC16(argv[1], "configset_get_value_multi")) {
		for (i = 3; i < argc; i++) {
			int err;
			if ((err = FUNC8(&cs, argv[i]))) {
				FUNC1(stderr, "Error (%d) reading configuration file %s.\n", err, argv[i]);
				goto exit2;
			}
		}
		strptr = FUNC11(&cs, argv[2]);
		if (strptr) {
			for (i = 0; i < strptr->nr; i++) {
				v = strptr->items[i].string;
				if (!v)
					FUNC13("(NULL)\n");
				else
					FUNC13("%s\n", v);
			}
			goto exit0;
		} else {
			FUNC13("Value not found for \"%s\"\n", argv[2]);
			goto exit1;
		}
	} else if (!FUNC16(argv[1], "iterate")) {
		FUNC2(iterate_cb, NULL);
		goto exit0;
	}

	FUNC0("%s: Please check the syntax and the function name", argv[0]);

exit0:
	FUNC9(&cs);
	return 0;

exit1:
	FUNC9(&cs);
	return 1;

exit2:
	FUNC9(&cs);
	return 2;
}