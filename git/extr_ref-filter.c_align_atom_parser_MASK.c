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
struct align {int position; unsigned int width; } ;
struct TYPE_3__ {struct align align; } ;
struct used_atom {TYPE_1__ u; } ;
struct string_list {int nr; TYPE_2__* items; } ;
struct strbuf {int dummy; } ;
struct ref_format {int dummy; } ;
struct TYPE_4__ {char* string; } ;

/* Variables and functions */
 int ALIGN_LEFT ; 
 struct string_list STRING_LIST_INIT_DUP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,int /*<<< orphan*/ ,char const*) ; 
 int FUNC4 (struct strbuf*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct string_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct string_list*,char const*,char,int) ; 
 scalar_t__ FUNC7 (char const*,int,unsigned int*) ; 

__attribute__((used)) static int FUNC8(const struct ref_format *format, struct used_atom *atom,
			     const char *arg, struct strbuf *err)
{
	struct align *align = &atom->u.align;
	struct string_list params = STRING_LIST_INIT_DUP;
	int i;
	unsigned int width = ~0U;

	if (!arg)
		return FUNC4(err, -1, FUNC0("expected format: %%(align:<width>,<position>)"));

	align->position = ALIGN_LEFT;

	FUNC6(&params, arg, ',', -1);
	for (i = 0; i < params.nr; i++) {
		const char *s = params.items[i].string;
		int position;

		if (FUNC2(s, "position=", &s)) {
			position = FUNC1(s);
			if (position < 0) {
				FUNC3(err, FUNC0("unrecognized position:%s"), s);
				FUNC5(&params, 0);
				return -1;
			}
			align->position = position;
		} else if (FUNC2(s, "width=", &s)) {
			if (FUNC7(s, 10, &width)) {
				FUNC3(err, FUNC0("unrecognized width:%s"), s);
				FUNC5(&params, 0);
				return -1;
			}
		} else if (!FUNC7(s, 10, &width))
			;
		else if ((position = FUNC1(s)) >= 0)
			align->position = position;
		else {
			FUNC3(err, FUNC0("unrecognized %%(align) argument: %s"), s);
			FUNC5(&params, 0);
			return -1;
		}
	}

	if (width == ~0U) {
		FUNC5(&params, 0);
		return FUNC4(err, -1, FUNC0("positive width expected with the %%(align) atom"));
	}
	align->width = width;
	FUNC5(&params, 0);
	return 0;
}