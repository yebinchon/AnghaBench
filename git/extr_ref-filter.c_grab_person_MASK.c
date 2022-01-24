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
struct atom_value {void* s; } ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 void* FUNC0 (char const*) ; 
 void* FUNC1 (char const*) ; 
 void* FUNC2 (char const*) ; 
 char* FUNC3 (char const*,int,void*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,struct atom_value*,char const*) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 
 int FUNC7 (char const*) ; 
 scalar_t__ FUNC8 (char const*,char const*,int) ; 
 TYPE_1__* used_atom ; 
 int used_atom_cnt ; 

__attribute__((used)) static void FUNC9(const char *who, struct atom_value *val, int deref, void *buf)
{
	int i;
	int wholen = FUNC7(who);
	const char *wholine = NULL;

	for (i = 0; i < used_atom_cnt; i++) {
		const char *name = used_atom[i].name;
		struct atom_value *v = &val[i];
		if (!!deref != (*name == '*'))
			continue;
		if (deref)
			name++;
		if (FUNC8(who, name, wholen))
			continue;
		if (name[wholen] != 0 &&
		    FUNC6(name + wholen, "name") &&
		    FUNC6(name + wholen, "email") &&
		    !FUNC5(name + wholen, "date"))
			continue;
		if (!wholine)
			wholine = FUNC3(who, wholen, buf);
		if (!wholine)
			return; /* no point looking for it */
		if (name[wholen] == 0)
			v->s = FUNC1(wholine);
		else if (!FUNC6(name + wholen, "name"))
			v->s = FUNC2(wholine);
		else if (!FUNC6(name + wholen, "email"))
			v->s = FUNC0(wholine);
		else if (FUNC5(name + wholen, "date"))
			FUNC4(wholine, v, name);
	}

	/*
	 * For a tag or a commit object, if "creator" or "creatordate" is
	 * requested, do something special.
	 */
	if (FUNC6(who, "tagger") && FUNC6(who, "committer"))
		return; /* "author" for commit object is not wanted */
	if (!wholine)
		wholine = FUNC3(who, wholen, buf);
	if (!wholine)
		return;
	for (i = 0; i < used_atom_cnt; i++) {
		const char *name = used_atom[i].name;
		struct atom_value *v = &val[i];
		if (!!deref != (*name == '*'))
			continue;
		if (deref)
			name++;

		if (FUNC5(name, "creatordate"))
			FUNC4(wholine, v, name);
		else if (!FUNC6(name, "creator"))
			v->s = FUNC1(wholine);
	}
}