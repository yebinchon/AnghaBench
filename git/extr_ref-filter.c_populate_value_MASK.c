#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ push_remote; scalar_t__ push; } ;
struct TYPE_8__ {char const* color; char* head; TYPE_1__ remote_ref; } ;
struct used_atom {char* name; scalar_t__ source; TYPE_2__ u; } ;
struct tag {int dummy; } ;
struct strbuf {int dummy; } ;
struct ref_array_item {int flag; char const* refname; scalar_t__ kind; int /*<<< orphan*/  objectname; struct atom_value* value; void* symref; } ;
struct object_info {int dummy; } ;
struct object {scalar_t__ type; } ;
struct branch {int dummy; } ;
struct atom_value {int /*<<< orphan*/ * s; int /*<<< orphan*/  handler; struct used_atom* atom; } ;
typedef  int /*<<< orphan*/  empty ;
struct TYPE_10__ {int /*<<< orphan*/ * contentp; } ;
struct TYPE_9__ {int /*<<< orphan*/  oid; TYPE_5__ info; int /*<<< orphan*/  content; } ;

/* Variables and functions */
 scalar_t__ FILTER_REFS_BRANCHES ; 
 struct object_info OBJECT_INFO_INIT ; 
 scalar_t__ OBJ_TAG ; 
 int REF_ISPACKED ; 
 int REF_ISSYMREF ; 
 int /*<<< orphan*/  RESOLVE_REF_READING ; 
 scalar_t__ SOURCE_NONE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  align_atom_handler ; 
 int /*<<< orphan*/  append_atom ; 
 struct branch* FUNC1 (char const*) ; 
 char* FUNC2 (struct branch*,int /*<<< orphan*/ *) ; 
 char* FUNC3 (struct branch*,int /*<<< orphan*/ *) ; 
 char* FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  else_atom_handler ; 
 int /*<<< orphan*/  end_atom_handler ; 
 int /*<<< orphan*/  FUNC5 (struct used_atom*,char const*,struct branch*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (struct ref_array_item*,int,struct object**,TYPE_3__*,struct strbuf*) ; 
 char* FUNC8 (struct used_atom*,struct ref_array_item*) ; 
 char* FUNC9 (struct used_atom*,struct ref_array_item*) ; 
 int /*<<< orphan*/ * FUNC10 (struct tag*) ; 
 int /*<<< orphan*/ * FUNC11 (struct used_atom*,struct ref_array_item*) ; 
 scalar_t__ FUNC12 (char const*,int /*<<< orphan*/ *,struct atom_value*,struct used_atom*) ; 
 int /*<<< orphan*/  if_atom_handler ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*,struct object_info*,int) ; 
 scalar_t__ need_symref ; 
 scalar_t__ need_tagged ; 
 TYPE_3__ oi ; 
 TYPE_3__ oi_deref ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 void* FUNC15 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (char const*,char*,char const**) ; 
 scalar_t__ FUNC17 (char const*,char*) ; 
 int FUNC18 (struct strbuf*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC19 (char const*,char*) ; 
 int /*<<< orphan*/  then_atom_handler ; 
 struct used_atom* used_atom ; 
 int used_atom_cnt ; 
 struct atom_value* FUNC20 (int,int) ; 
 void* FUNC21 (char const*) ; 
 int /*<<< orphan*/ * FUNC22 (char*,char const*) ; 

__attribute__((used)) static int FUNC23(struct ref_array_item *ref, struct strbuf *err)
{
	struct object *obj;
	int i;
	struct object_info empty = OBJECT_INFO_INIT;

	ref->value = FUNC20(used_atom_cnt, sizeof(struct atom_value));

	if (need_symref && (ref->flag & REF_ISSYMREF) && !ref->symref) {
		ref->symref = FUNC15(ref->refname, RESOLVE_REF_READING,
					     NULL, NULL);
		if (!ref->symref)
			ref->symref = FUNC21("");
	}

	/* Fill in specials first */
	for (i = 0; i < used_atom_cnt; i++) {
		struct used_atom *atom = &used_atom[i];
		const char *name = used_atom[i].name;
		struct atom_value *v = &ref->value[i];
		int deref = 0;
		const char *refname;
		struct branch *branch = NULL;

		v->handler = append_atom;
		v->atom = atom;

		if (*name == '*') {
			deref = 1;
			name++;
		}

		if (FUNC17(name, "refname"))
			refname = FUNC8(atom, ref);
		else if (!FUNC19(name, "worktreepath")) {
			if (ref->kind == FILTER_REFS_BRANCHES)
				v->s = FUNC11(atom, ref);
			else
				v->s = FUNC21("");
			continue;
		}
		else if (FUNC17(name, "symref"))
			refname = FUNC9(atom, ref);
		else if (FUNC17(name, "upstream")) {
			const char *branch_name;
			/* only local branches may have an upstream */
			if (!FUNC16(ref->refname, "refs/heads/",
					 &branch_name)) {
				v->s = FUNC21("");
				continue;
			}
			branch = FUNC1(branch_name);

			refname = FUNC3(branch, NULL);
			if (refname)
				FUNC5(atom, refname, branch, &v->s);
			else
				v->s = FUNC21("");
			continue;
		} else if (atom->u.remote_ref.push) {
			const char *branch_name;
			v->s = FUNC21("");
			if (!FUNC16(ref->refname, "refs/heads/",
					 &branch_name))
				continue;
			branch = FUNC1(branch_name);

			if (atom->u.remote_ref.push_remote)
				refname = NULL;
			else {
				refname = FUNC2(branch, NULL);
				if (!refname)
					continue;
			}
			/* We will definitely re-init v->s on the next line. */
			FUNC6((char *)v->s);
			FUNC5(atom, refname, branch, &v->s);
			continue;
		} else if (FUNC17(name, "color:")) {
			v->s = FUNC21(atom->u.color);
			continue;
		} else if (!FUNC19(name, "flag")) {
			char buf[256], *cp = buf;
			if (ref->flag & REF_ISSYMREF)
				cp = FUNC4(cp, ",symref");
			if (ref->flag & REF_ISPACKED)
				cp = FUNC4(cp, ",packed");
			if (cp == buf)
				v->s = FUNC21("");
			else {
				*cp = '\0';
				v->s = FUNC21(buf + 1);
			}
			continue;
		} else if (!deref && FUNC12(name, &ref->objectname, v, atom)) {
			continue;
		} else if (!FUNC19(name, "HEAD")) {
			if (atom->u.head && !FUNC19(ref->refname, atom->u.head))
				v->s = FUNC21("*");
			else
				v->s = FUNC21(" ");
			continue;
		} else if (FUNC17(name, "align")) {
			v->handler = align_atom_handler;
			v->s = FUNC21("");
			continue;
		} else if (!FUNC19(name, "end")) {
			v->handler = end_atom_handler;
			v->s = FUNC21("");
			continue;
		} else if (FUNC17(name, "if")) {
			const char *s;
			if (FUNC16(name, "if:", &s))
				v->s = FUNC21(s);
			else
				v->s = FUNC21("");
			v->handler = if_atom_handler;
			continue;
		} else if (!FUNC19(name, "then")) {
			v->handler = then_atom_handler;
			v->s = FUNC21("");
			continue;
		} else if (!FUNC19(name, "else")) {
			v->handler = else_atom_handler;
			v->s = FUNC21("");
			continue;
		} else
			continue;

		if (!deref)
			v->s = FUNC21(refname);
		else
			v->s = FUNC22("%s^{}", refname);
		FUNC6((char *)refname);
	}

	for (i = 0; i < used_atom_cnt; i++) {
		struct atom_value *v = &ref->value[i];
		if (v->s == NULL && used_atom[i].source == SOURCE_NONE)
			return FUNC18(err, -1, FUNC0("missing object %s for %s"),
					       FUNC14(&ref->objectname), ref->refname);
	}

	if (need_tagged)
		oi.info.contentp = &oi.content;
	if (!FUNC13(&oi.info, &empty, sizeof(empty)) &&
	    !FUNC13(&oi_deref.info, &empty, sizeof(empty)))
		return 0;


	oi.oid = ref->objectname;
	if (FUNC7(ref, 0, &obj, &oi, err))
		return -1;

	/*
	 * If there is no atom that wants to know about tagged
	 * object, we are done.
	 */
	if (!need_tagged || (obj->type != OBJ_TAG))
		return 0;

	/*
	 * If it is a tag object, see if we use a value that derefs
	 * the object, and if we do grab the object it refers to.
	 */
	oi_deref.oid = *FUNC10((struct tag *)obj);

	/*
	 * NEEDSWORK: This derefs tag only once, which
	 * is good to deal with chains of trust, but
	 * is not consistent with what deref_tag() does
	 * which peels the onion to the core.
	 */
	return FUNC7(ref, 1, &obj, &oi_deref, err);
}