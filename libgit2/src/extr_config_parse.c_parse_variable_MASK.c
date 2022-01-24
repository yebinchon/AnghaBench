#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  line_len; int /*<<< orphan*/  line; } ;
struct TYPE_6__ {TYPE_5__ ctx; } ;
typedef  TYPE_1__ git_config_parser ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char const) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*) ; 
 scalar_t__ FUNC9 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int FUNC10 (char**,char const**,TYPE_1__*,char*) ; 
 int FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int FUNC12 (char**,int*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(git_config_parser *reader, char **var_name, char **var_value)
{
	const char *value_start = NULL;
	char *line = NULL, *name = NULL, *value = NULL;
	int quote_count, error;
	bool multiline;

	*var_name = NULL;
	*var_value = NULL;

	FUNC8(&reader->ctx);
	line = FUNC3(reader->ctx.line, reader->ctx.line_len);
	FUNC0(line);

	quote_count = FUNC11(line, 0);

	if ((error = FUNC10(&name, &value_start, reader, line)) < 0)
		goto out;

	/*
	 * Now, let's try to parse the value
	 */
	if (value_start != NULL) {
		while (FUNC2(value_start[0]))
			value_start++;

		if ((error = FUNC12(&value, &multiline, value_start, 0)) < 0)
			goto out;

		if (multiline) {
			git_buf multi_value = GIT_BUF_INIT;
			FUNC4(&multi_value, value, 0);
			value = NULL;

			if (FUNC9(reader, &multi_value, quote_count) < 0 ||
			    FUNC7(&multi_value)) {
				error = -1;
				FUNC6(&multi_value);
				goto out;
			}

			value = FUNC5(&multi_value);
		}
	}

	*var_name = name;
	*var_value = value;
	name = NULL;
	value = NULL;

out:
	FUNC1(name);
	FUNC1(value);
	FUNC1(line);
	return error;
}