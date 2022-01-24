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
struct TYPE_2__ {char* buf; } ;
struct json_writer {TYPE_1__ json; } ;
typedef  int /*<<< orphan*/  intmax_t ;

/* Variables and functions */
 struct json_writer JSON_WRITER_INIT ; 
 int MAX_LINE_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int,double*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,char**) ; 
 char* FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct json_writer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct json_writer*,int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  FUNC7 (struct json_writer*) ; 
 int /*<<< orphan*/  FUNC8 (struct json_writer*) ; 
 int /*<<< orphan*/  FUNC9 (struct json_writer*) ; 
 int /*<<< orphan*/  FUNC10 (struct json_writer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct json_writer*) ; 
 int /*<<< orphan*/  FUNC12 (struct json_writer*,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct json_writer*) ; 
 int /*<<< orphan*/  FUNC14 (struct json_writer*) ; 
 int /*<<< orphan*/  FUNC15 (struct json_writer*) ; 
 int /*<<< orphan*/  FUNC16 (struct json_writer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct json_writer*,char*,int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  FUNC18 (struct json_writer*,char*) ; 
 int /*<<< orphan*/  FUNC19 (struct json_writer*,char*) ; 
 int /*<<< orphan*/  FUNC20 (struct json_writer*,char*) ; 
 int /*<<< orphan*/  FUNC21 (struct json_writer*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct json_writer*,char*) ; 
 int /*<<< orphan*/  FUNC23 (struct json_writer*,char*,char*) ; 
 int /*<<< orphan*/  FUNC24 (struct json_writer*,char*) ; 
 int /*<<< orphan*/  pretty ; 
 int /*<<< orphan*/  FUNC25 (char*,char*) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC27 (char*,char*) ; 
 char* FUNC28 (char*,char*) ; 

__attribute__((used)) static int FUNC29(void)
{
	struct json_writer jw = JSON_WRITER_INIT;
	char buf[MAX_LINE_LENGTH];
	char *line;
	int line_nr = 0;

	line = FUNC4(buf, MAX_LINE_LENGTH);
	if (!line)
		return 0;

	if (!FUNC27(line, "object"))
		FUNC16(&jw, pretty);
	else if (!FUNC27(line, "array"))
		FUNC5(&jw, pretty);
	else
		FUNC0("expected first line to be 'object' or 'array'");

	while ((line = FUNC4(buf, MAX_LINE_LENGTH)) != NULL) {
		char *verb;
		char *key;
		char *s_value;
		intmax_t i_value;
		double d_value;

		line_nr++;

		verb = FUNC28(line, " ");

		if (!FUNC27(verb, "end")) {
			FUNC14(&jw);
		}
		else if (!FUNC27(verb, "object-string")) {
			FUNC3(line_nr, &key);
			FUNC3(line_nr, &s_value);
			FUNC23(&jw, key, s_value);
		}
		else if (!FUNC27(verb, "object-int")) {
			FUNC3(line_nr, &key);
			FUNC2(line_nr, &i_value);
			FUNC21(&jw, key, i_value);
		}
		else if (!FUNC27(verb, "object-double")) {
			FUNC3(line_nr, &key);
			FUNC2(line_nr, &i_value);
			FUNC1(line_nr, &d_value);
			FUNC17(&jw, key, i_value, d_value);
		}
		else if (!FUNC27(verb, "object-true")) {
			FUNC3(line_nr, &key);
			FUNC24(&jw, key);
		}
		else if (!FUNC27(verb, "object-false")) {
			FUNC3(line_nr, &key);
			FUNC18(&jw, key);
		}
		else if (!FUNC27(verb, "object-null")) {
			FUNC3(line_nr, &key);
			FUNC22(&jw, key);
		}
		else if (!FUNC27(verb, "object-object")) {
			FUNC3(line_nr, &key);
			FUNC20(&jw, key);
		}
		else if (!FUNC27(verb, "object-array")) {
			FUNC3(line_nr, &key);
			FUNC19(&jw, key);
		}
		else if (!FUNC27(verb, "array-string")) {
			FUNC3(line_nr, &s_value);
			FUNC12(&jw, s_value);
		}
		else if (!FUNC27(verb, "array-int")) {
			FUNC2(line_nr, &i_value);
			FUNC10(&jw, i_value);
		}
		else if (!FUNC27(verb, "array-double")) {
			FUNC2(line_nr, &i_value);
			FUNC1(line_nr, &d_value);
			FUNC6(&jw, i_value, d_value);
		}
		else if (!FUNC27(verb, "array-true"))
			FUNC13(&jw);
		else if (!FUNC27(verb, "array-false"))
			FUNC7(&jw);
		else if (!FUNC27(verb, "array-null"))
			FUNC11(&jw);
		else if (!FUNC27(verb, "array-object"))
			FUNC9(&jw);
		else if (!FUNC27(verb, "array-array"))
			FUNC8(&jw);
		else
			FUNC0("unrecognized token: '%s'", verb);
	}

	if (!FUNC15(&jw))
		FUNC0("json not terminated: '%s'", jw.json.buf);

	FUNC25("%s\n", jw.json.buf);

	FUNC26(&jw.json);
	return 0;
}