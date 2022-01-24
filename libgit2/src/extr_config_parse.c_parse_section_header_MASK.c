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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (size_t*,size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int) ; 
 char* FUNC6 (size_t) ; 
 char* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*) ; 
 int FUNC10 (TYPE_1__*,char*,int,char*,char**) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int,char*) ; 
 char* FUNC12 (char*,char) ; 

__attribute__((used)) static int FUNC13(git_config_parser *reader, char **section_out)
{
	char *name, *name_end;
	int name_length, c, pos;
	int result;
	char *line;
	size_t line_len;

	FUNC9(&reader->ctx);
	line = FUNC7(reader->ctx.line, reader->ctx.line_len);
	if (line == NULL)
		return -1;

	/* find the end of the variable's name */
	name_end = FUNC12(line, ']');
	if (name_end == NULL) {
		FUNC4(line);
		FUNC11(reader, 0, "missing ']' in section header");
		return -1;
	}

	FUNC1(&line_len, (size_t)(name_end - line), 1);
	name = FUNC6(line_len);
	FUNC0(name);

	name_length = 0;
	pos = 0;

	/* Make sure we were given a section header */
	c = line[pos++];
	FUNC2(c == '[');

	c = line[pos++];

	do {
		if (FUNC5(c)){
			name[name_length] = '\0';
			result = FUNC10(reader, line, pos, name, section_out);
			FUNC4(line);
			FUNC4(name);
			return result;
		}

		if (!FUNC3(c) && c != '.') {
			FUNC11(reader, pos, "unexpected character in header");
			goto fail_parse;
		}

		name[name_length++] = (char)FUNC8(c);

	} while ((c = line[pos++]) != ']');

	if (line[pos - 1] != ']') {
		FUNC11(reader, pos, "unexpected end of file");
		goto fail_parse;
	}

	FUNC4(line);

	name[name_length] = 0;
	*section_out = name;

	return pos;

fail_parse:
	FUNC4(line);
	FUNC4(name);
	return -1;
}