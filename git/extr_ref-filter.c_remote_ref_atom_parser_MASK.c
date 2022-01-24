#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int push; int nobracket; int push_remote; int /*<<< orphan*/  refname; void* option; } ;
struct TYPE_6__ {TYPE_2__ remote_ref; } ;
struct used_atom {char const* name; TYPE_3__ u; } ;
struct string_list {int nr; TYPE_1__* items; } ;
struct strbuf {int dummy; } ;
struct ref_format {int dummy; } ;
struct TYPE_4__ {char* string; } ;

/* Variables and functions */
 void* RR_REF ; 
 void* RR_REMOTE_NAME ; 
 void* RR_REMOTE_REF ; 
 void* RR_TRACK ; 
 void* RR_TRACKSHORT ; 
 struct string_list STRING_LIST_INIT_DUP ; 
 int FUNC0 (int /*<<< orphan*/ *,char const*,char const*,struct strbuf*) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct string_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct string_list*,char const*,char,int) ; 

__attribute__((used)) static int FUNC5(const struct ref_format *format, struct used_atom *atom,
				  const char *arg, struct strbuf *err)
{
	struct string_list params = STRING_LIST_INIT_DUP;
	int i;

	if (!FUNC2(atom->name, "push") || FUNC1(atom->name, "push:"))
		atom->u.remote_ref.push = 1;

	if (!arg) {
		atom->u.remote_ref.option = RR_REF;
		return FUNC0(&atom->u.remote_ref.refname,
						    arg, atom->name, err);
	}

	atom->u.remote_ref.nobracket = 0;
	FUNC4(&params, arg, ',', -1);

	for (i = 0; i < params.nr; i++) {
		const char *s = params.items[i].string;

		if (!FUNC2(s, "track"))
			atom->u.remote_ref.option = RR_TRACK;
		else if (!FUNC2(s, "trackshort"))
			atom->u.remote_ref.option = RR_TRACKSHORT;
		else if (!FUNC2(s, "nobracket"))
			atom->u.remote_ref.nobracket = 1;
		else if (!FUNC2(s, "remotename")) {
			atom->u.remote_ref.option = RR_REMOTE_NAME;
			atom->u.remote_ref.push_remote = 1;
		} else if (!FUNC2(s, "remoteref")) {
			atom->u.remote_ref.option = RR_REMOTE_REF;
			atom->u.remote_ref.push_remote = 1;
		} else {
			atom->u.remote_ref.option = RR_REF;
			if (FUNC0(&atom->u.remote_ref.refname,
							 arg, atom->name, err)) {
				FUNC3(&params, 0);
				return -1;
			}
		}
	}

	FUNC3(&params, 0);
	return 0;
}