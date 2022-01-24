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
struct list_head {int dummy; } ;
struct line {struct chan* chan_out; struct chan* chan_in; struct list_head chan_list; } ;
struct chan_opts {int dummy; } ;
struct chan {int input; int output; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct list_head*) ; 
 struct chan* FUNC4 (struct line*,char*,int,struct chan_opts const*,char**) ; 
 char* FUNC5 (char*,char) ; 

int FUNC6(char *str, struct line *line, int device,
		    const struct chan_opts *opts, char **error_out)
{
	struct list_head *chans = &line->chan_list;
	struct chan *new;
	char *in, *out;

	if (!FUNC3(chans)) {
		line->chan_in = line->chan_out = NULL;
		FUNC1(chans);
		FUNC0(chans);
	}

	if (!str)
		return 0;

	out = FUNC5(str, ',');
	if (out != NULL) {
		in = str;
		*out = '\0';
		out++;
		new = FUNC4(line, in, device, opts, error_out);
		if (new == NULL)
			return -1;

		new->input = 1;
		FUNC2(&new->list, chans);
		line->chan_in = new;

		new = FUNC4(line, out, device, opts, error_out);
		if (new == NULL)
			return -1;

		FUNC2(&new->list, chans);
		new->output = 1;
		line->chan_out = new;
	}
	else {
		new = FUNC4(line, str, device, opts, error_out);
		if (new == NULL)
			return -1;

		FUNC2(&new->list, chans);
		new->input = 1;
		new->output = 1;
		line->chan_in = line->chan_out = new;
	}
	return 0;
}