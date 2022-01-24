#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct strbuf {int dummy; } ;
struct ref_format {int dummy; } ;
struct TYPE_11__ {int /*<<< orphan*/ * contentp; } ;
struct TYPE_15__ {int /*<<< orphan*/  content; TYPE_2__ info; } ;
struct TYPE_10__ {int /*<<< orphan*/ * contentp; } ;
struct TYPE_14__ {int /*<<< orphan*/  content; TYPE_1__ info; } ;
struct TYPE_13__ {char* name; scalar_t__ source; int /*<<< orphan*/  u; int /*<<< orphan*/  type; } ;
struct TYPE_12__ {char* name; scalar_t__ source; scalar_t__ (* parser ) (struct ref_format const*,TYPE_4__*,char const*,struct strbuf*) ;int /*<<< orphan*/  cmp_type; } ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int) ; 
 scalar_t__ SOURCE_NONE ; 
 scalar_t__ SOURCE_OBJ ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 char* FUNC4 (char const*,char,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int need_symref ; 
 int need_tagged ; 
 TYPE_7__ oi ; 
 TYPE_6__ oi_deref ; 
 int FUNC7 (struct strbuf*,int,int /*<<< orphan*/ ,int,char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int FUNC9 (char*) ; 
 scalar_t__ FUNC10 (struct ref_format const*,TYPE_4__*,char const*,struct strbuf*) ; 
 TYPE_4__* used_atom ; 
 int used_atom_cnt ; 
 TYPE_3__* valid_atom ; 
 char* FUNC11 (char const*,int) ; 

__attribute__((used)) static int FUNC12(const struct ref_format *format,
				 const char *atom, const char *ep,
				 struct strbuf *err)
{
	const char *sp;
	const char *arg;
	int i, at, atom_len;

	sp = atom;
	if (*sp == '*' && sp < ep)
		sp++; /* deref */
	if (ep <= sp)
		return FUNC7(err, -1, FUNC2("malformed field name: %.*s"),
				       (int)(ep-atom), atom);

	/* Do we have the atom already used elsewhere? */
	for (i = 0; i < used_atom_cnt; i++) {
		int len = FUNC9(used_atom[i].name);
		if (len == ep - atom && !FUNC5(used_atom[i].name, atom, len))
			return i;
	}

	/*
	 * If the atom name has a colon, strip it and everything after
	 * it off - it specifies the format for this entry, and
	 * shouldn't be used for checking against the valid_atom
	 * table.
	 */
	arg = FUNC4(sp, ':', ep - sp);
	atom_len = (arg ? arg : ep) - sp;

	/* Is the atom a valid one? */
	for (i = 0; i < FUNC0(valid_atom); i++) {
		int len = FUNC9(valid_atom[i].name);
		if (len == atom_len && !FUNC5(valid_atom[i].name, sp, len))
			break;
	}

	if (FUNC0(valid_atom) <= i)
		return FUNC7(err, -1, FUNC2("unknown field name: %.*s"),
				       (int)(ep-atom), atom);
	if (valid_atom[i].source != SOURCE_NONE && !FUNC3())
		return FUNC7(err, -1,
				       FUNC2("not a git repository, but the field '%.*s' requires access to object data"),
				       (int)(ep-atom), atom);

	/* Add it in, including the deref prefix */
	at = used_atom_cnt;
	used_atom_cnt++;
	FUNC1(used_atom, used_atom_cnt);
	used_atom[at].name = FUNC11(atom, ep - atom);
	used_atom[at].type = valid_atom[i].cmp_type;
	used_atom[at].source = valid_atom[i].source;
	if (used_atom[at].source == SOURCE_OBJ) {
		if (*atom == '*')
			oi_deref.info.contentp = &oi_deref.content;
		else
			oi.info.contentp = &oi.content;
	}
	if (arg) {
		arg = used_atom[at].name + (arg - atom) + 1;
		if (!*arg) {
			/*
			 * Treat empty sub-arguments list as NULL (i.e.,
			 * "%(atom:)" is equivalent to "%(atom)").
			 */
			arg = NULL;
		}
	}
	FUNC6(&used_atom[at].u, 0, sizeof(used_atom[at].u));
	if (valid_atom[i].parser && valid_atom[i].parser(format, &used_atom[at], arg, err))
		return -1;
	if (*atom == '*')
		need_tagged = 1;
	if (!FUNC8(valid_atom[i].name, "symref"))
		need_symref = 1;
	return at;
}