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
struct tty_struct {int dummy; } ;
struct line {char* init_str; int /*<<< orphan*/  port; int /*<<< orphan*/  valid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,char*,int) ; 
 int FUNC1 (struct line*,char*,int,char**) ; 
 int FUNC2 (char*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*) ; 
 struct tty_struct* FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(char *name, struct line *lines, unsigned int num, char *str,
		    int size, char **error_out)
{
	struct line *line;
	char *end;
	int dev, n = 0;

	dev = FUNC2(name, &end, 0);
	if ((*end != '\0') || (end == name)) {
		*error_out = "line_get_config failed to parse device number";
		return 0;
	}

	if ((dev < 0) || (dev >= num)) {
		*error_out = "device number out of range";
		return 0;
	}

	line = &lines[dev];

	if (!line->valid)
		FUNC0(str, size, n, "none", 1);
	else {
		struct tty_struct *tty = FUNC4(&line->port);
		if (tty == NULL) {
			FUNC0(str, size, n, line->init_str, 1);
		} else {
			n = FUNC1(line, str, size, error_out);
			FUNC3(tty);
		}
	}

	return n;
}