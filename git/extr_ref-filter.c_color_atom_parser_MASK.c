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
struct TYPE_2__ {int /*<<< orphan*/  color; } ;
struct used_atom {TYPE_1__ u; } ;
struct strbuf {int dummy; } ;
struct ref_format {int /*<<< orphan*/  use_color; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct strbuf*,int,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(const struct ref_format *format, struct used_atom *atom,
			     const char *color_value, struct strbuf *err)
{
	if (!color_value)
		return FUNC2(err, -1, FUNC0("expected format: %%(color:<color>)"));
	if (FUNC1(color_value, atom->u.color) < 0)
		return FUNC2(err, -1, FUNC0("unrecognized color: %%(color:%s)"),
				       color_value);
	/*
	 * We check this after we've parsed the color, which lets us complain
	 * about syntactically bogus color names even if they won't be used.
	 */
	if (!FUNC3(format->use_color))
		FUNC1("", atom->u.color);
	return 0;
}