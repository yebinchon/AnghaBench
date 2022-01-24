#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct checkdiff_t {int conflict_marker_size; char* lineno; int status; int filename; TYPE_1__* o; int /*<<< orphan*/  ws_rule; } ;
struct TYPE_4__ {int /*<<< orphan*/  file; int /*<<< orphan*/  use_color; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIFF_FILE_NEW ; 
 int /*<<< orphan*/  DIFF_RESET ; 
 int /*<<< orphan*/  DIFF_WHITESPACE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char const*,char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*,int,unsigned long) ; 
 char* FUNC7 (unsigned int) ; 
 unsigned int FUNC8 (char*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,char const*,char const*) ; 

__attribute__((used)) static void FUNC10(void *priv, char *line, unsigned long len)
{
	struct checkdiff_t *data = priv;
	int marker_size = data->conflict_marker_size;
	const char *ws = FUNC1(data->o->use_color, DIFF_WHITESPACE);
	const char *reset = FUNC1(data->o->use_color, DIFF_RESET);
	const char *set = FUNC1(data->o->use_color, DIFF_FILE_NEW);
	char *err;
	const char *line_prefix;

	FUNC0(data->o);
	line_prefix = FUNC2(data->o);

	if (line[0] == '+') {
		unsigned bad;
		data->lineno++;
		if (FUNC6(line + 1, marker_size, len - 1)) {
			data->status |= 1;
			FUNC4(data->o->file,
				"%s%d:%s: leftover conflict marker\n",
				line_prefix, data->filename, data->lineno);
		}
		bad = FUNC8(line + 1, len - 1, data->ws_rule);
		if (!bad)
			return;
		data->status |= bad;
		err = FUNC7(bad);
		FUNC4(data->o->file, "%s%d:%s: %s.\n",
			line_prefix, data->filename, data->lineno, err);
		FUNC5(err);
		FUNC3(data->o, set, reset, line, 1);
		FUNC9(line + 1, len - 1, data->ws_rule,
			      data->o->file, set, reset, ws);
	} else if (line[0] == ' ') {
		data->lineno++;
	}
}