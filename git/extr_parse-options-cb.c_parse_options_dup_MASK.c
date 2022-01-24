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
struct option {scalar_t__ type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct option*,int) ; 
 scalar_t__ OPTION_END ; 
 int /*<<< orphan*/  FUNC1 (struct option*,struct option const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct option*,int /*<<< orphan*/ ,int) ; 

struct option *FUNC3(const struct option *o)
{
	struct option *opts;
	int nr = 0;

	while (o && o->type != OPTION_END) {
		nr++;
		o++;
	}

	FUNC0(opts, nr + 1);
	FUNC1(opts, o - nr, sizeof(*o) * nr);
	FUNC2(opts + nr, 0, sizeof(*opts));
	opts[nr].type = OPTION_END;
	return opts;
}