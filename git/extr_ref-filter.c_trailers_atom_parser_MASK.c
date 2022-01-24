#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int no_divider; int unfold; int only_trailers; } ;
struct TYPE_7__ {int /*<<< orphan*/  option; TYPE_2__ trailer_opts; } ;
struct TYPE_8__ {TYPE_3__ contents; } ;
struct used_atom {TYPE_4__ u; } ;
struct string_list {int nr; TYPE_1__* items; } ;
struct strbuf {int dummy; } ;
struct ref_format {int dummy; } ;
struct TYPE_5__ {char* string; } ;

/* Variables and functions */
 int /*<<< orphan*/  C_TRAILERS ; 
 struct string_list STRING_LIST_INIT_DUP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct string_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct string_list*,char const*,char,int) ; 

__attribute__((used)) static int FUNC5(const struct ref_format *format, struct used_atom *atom,
				const char *arg, struct strbuf *err)
{
	struct string_list params = STRING_LIST_INIT_DUP;
	int i;

	atom->u.contents.trailer_opts.no_divider = 1;

	if (arg) {
		FUNC4(&params, arg, ',', -1);
		for (i = 0; i < params.nr; i++) {
			const char *s = params.items[i].string;
			if (!FUNC2(s, "unfold"))
				atom->u.contents.trailer_opts.unfold = 1;
			else if (!FUNC2(s, "only"))
				atom->u.contents.trailer_opts.only_trailers = 1;
			else {
				FUNC1(err, FUNC0("unknown %%(trailers) argument: %s"), s);
				FUNC3(&params, 0);
				return -1;
			}
		}
	}
	atom->u.contents.option = C_TRAILERS;
	FUNC3(&params, 0);
	return 0;
}