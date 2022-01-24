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
struct tty_driver {int dummy; } ;
struct TYPE_4__ {scalar_t__ count; } ;
struct line {int valid; char* init_str; TYPE_2__ port; TYPE_1__* driver; } ;
struct device {int dummy; } ;
struct chan_opts {int dummy; } ;
struct TYPE_3__ {struct tty_driver* driver; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct device*) ; 
 int FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (char*,struct line*,int,struct chan_opts const*,char**) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 struct device* FUNC6 (TYPE_2__*,struct tty_driver*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct tty_driver*,int) ; 

int FUNC8(struct line *lines, int n, char *init,
		   const struct chan_opts *opts, char **error_out)
{
	struct line *line = &lines[n];
	struct tty_driver *driver = line->driver->driver;
	int err = -EINVAL;

	if (line->port.count) {
		*error_out = "Device is already open";
		goto out;
	}

	if (!FUNC5(init, "none")) {
		if (line->valid) {
			line->valid = 0;
			FUNC2(line->init_str);
			FUNC7(driver, n);
			FUNC4(NULL, line, n, opts, error_out);
			err = 0;
		}
	} else {
		char *new = FUNC3(init, GFP_KERNEL);
		if (!new) {
			*error_out = "Failed to allocate memory";
			return -ENOMEM;
		}
		if (line->valid) {
			FUNC7(driver, n);
			FUNC2(line->init_str);
		}
		line->init_str = new;
		line->valid = 1;
		err = FUNC4(new, line, n, opts, error_out);
		if (!err) {
			struct device *d = FUNC6(&line->port,
					driver, n, NULL);
			if (FUNC0(d)) {
				*error_out = "Failed to register device";
				err = FUNC1(d);
				FUNC4(NULL, line, n, opts, error_out);
			}
		}
		if (err) {
			line->init_str = NULL;
			line->valid = 0;
			FUNC2(new);
		}
	}
out:
	return err;
}