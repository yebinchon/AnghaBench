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
typedef  int /*<<< orphan*/  git_config_parser ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (size_t*,size_t,int) ; 
 int INT_MAX ; 
 scalar_t__ FUNC1 (char const) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,char*) ; 
 size_t FUNC9 (char const*) ; 
 char* FUNC10 (char const*,char) ; 

__attribute__((used)) static int FUNC11(git_config_parser *reader, const char *line, size_t pos, const char *base_name, char **section_name)
{
	int c, rpos;
	const char *first_quote, *last_quote;
	const char *line_start = line;
	git_buf buf = GIT_BUF_INIT;
	size_t quoted_len, alloc_len, base_name_len = FUNC9(base_name);

	/* Skip any additional whitespace before our section name */
	while (FUNC1(line[pos]))
		pos++;

	/* We should be at the first quotation mark. */
	if (line[pos] != '"') {
		FUNC8(reader, 0, "missing quotation marks in section header");
		goto end_error;
	}

	first_quote = &line[pos];
	last_quote = FUNC10(line, '"');
	quoted_len = last_quote - first_quote;

	if ((last_quote - line) > INT_MAX) {
		FUNC8(reader, 0, "invalid section header, line too long");
		goto end_error;
	}

	if (quoted_len == 0) {
		FUNC8(reader, 0, "missing closing quotation mark in section header");
		goto end_error;
	}

	FUNC0(&alloc_len, base_name_len, quoted_len);
	FUNC0(&alloc_len, alloc_len, 2);

	if (FUNC4(&buf, alloc_len) < 0 ||
	    FUNC6(&buf, "%s.", base_name) < 0)
		goto end_error;

	rpos = 0;

	line = first_quote;
	c = line[++rpos];

	/*
	 * At the end of each iteration, whatever is stored in c will be
	 * added to the string. In case of error, jump to out
	 */
	do {

		switch (c) {
		case 0:
			FUNC8(reader, 0, "unexpected end-of-line in section header");
			goto end_error;

		case '"':
			goto end_parse;

		case '\\':
			c = line[++rpos];

			if (c == 0) {
				FUNC8(reader, rpos, "unexpected end-of-line in section header");
				goto end_error;
			}

		default:
			break;
		}

		FUNC7(&buf, (char)c);
		c = line[++rpos];
	} while (line + rpos < last_quote);

end_parse:
	if (FUNC5(&buf))
		goto end_error;

	if (line[rpos] != '"' || line[rpos + 1] != ']') {
		FUNC8(reader, rpos, "unexpected text after closing quotes");
		FUNC3(&buf);
		return -1;
	}

	*section_name = FUNC2(&buf);
	return (int)(&line[rpos + 2] - line_start); /* rpos is at the closing quote */

end_error:
	FUNC3(&buf);

	return -1;
}