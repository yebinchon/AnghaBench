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
struct TYPE_4__ {scalar_t__ option; int /*<<< orphan*/  push; int /*<<< orphan*/  nobracket; int /*<<< orphan*/  refname; } ;
struct TYPE_5__ {TYPE_1__ remote_ref; } ;
struct used_atom {TYPE_2__ u; } ;
struct branch {int dummy; } ;
struct TYPE_6__ {char const* gone; int /*<<< orphan*/  ahead_behind; int /*<<< orphan*/  ahead; int /*<<< orphan*/  behind; } ;

/* Variables and functions */
 int /*<<< orphan*/  AHEAD_BEHIND_FULL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ RR_REF ; 
 scalar_t__ RR_REMOTE_NAME ; 
 scalar_t__ RR_REMOTE_REF ; 
 scalar_t__ RR_TRACK ; 
 scalar_t__ RR_TRACKSHORT ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 TYPE_3__ msgs ; 
 char* FUNC2 (struct branch*,int*) ; 
 char* FUNC3 (struct branch*,int*) ; 
 char* FUNC4 (struct branch*,int /*<<< orphan*/ ,int*) ; 
 char* FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC6 (struct branch*,int*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC7 (char const*) ; 
 char* FUNC8 (char*,...) ; 

__attribute__((used)) static void FUNC9(struct used_atom *atom, const char *refname,
				    struct branch *branch, const char **s)
{
	int num_ours, num_theirs;
	if (atom->u.remote_ref.option == RR_REF)
		*s = FUNC5(&atom->u.remote_ref.refname, refname);
	else if (atom->u.remote_ref.option == RR_TRACK) {
		if (FUNC6(branch, &num_ours, &num_theirs,
				       NULL, atom->u.remote_ref.push,
				       AHEAD_BEHIND_FULL) < 0) {
			*s = FUNC7(msgs.gone);
		} else if (!num_ours && !num_theirs)
			*s = FUNC7("");
		else if (!num_ours)
			*s = FUNC8(msgs.behind, num_theirs);
		else if (!num_theirs)
			*s = FUNC8(msgs.ahead, num_ours);
		else
			*s = FUNC8(msgs.ahead_behind,
				     num_ours, num_theirs);
		if (!atom->u.remote_ref.nobracket && *s[0]) {
			const char *to_free = *s;
			*s = FUNC8("[%s]", *s);
			FUNC1((void *)to_free);
		}
	} else if (atom->u.remote_ref.option == RR_TRACKSHORT) {
		if (FUNC6(branch, &num_ours, &num_theirs,
				       NULL, atom->u.remote_ref.push,
				       AHEAD_BEHIND_FULL) < 0) {
			*s = FUNC7("");
			return;
		}
		if (!num_ours && !num_theirs)
			*s = FUNC7("=");
		else if (!num_ours)
			*s = FUNC7("<");
		else if (!num_theirs)
			*s = FUNC7(">");
		else
			*s = FUNC7("<>");
	} else if (atom->u.remote_ref.option == RR_REMOTE_NAME) {
		int explicit;
		const char *remote = atom->u.remote_ref.push ?
			FUNC2(branch, &explicit) :
			FUNC3(branch, &explicit);
		*s = FUNC7(explicit ? remote : "");
	} else if (atom->u.remote_ref.option == RR_REMOTE_REF) {
		int explicit;
		const char *merge;

		merge = FUNC4(branch, atom->u.remote_ref.push,
					      &explicit);
		*s = FUNC7(explicit ? merge : "");
	} else
		FUNC0("unhandled RR_* enum");
}