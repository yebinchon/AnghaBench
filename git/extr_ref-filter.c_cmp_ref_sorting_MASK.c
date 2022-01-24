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
struct strbuf {int /*<<< orphan*/  buf; } ;
struct ref_sorting {size_t atom; scalar_t__ reverse; scalar_t__ version; scalar_t__ ignore_case; } ;
struct ref_array_item {char const* refname; } ;
struct atom_value {char const* s; scalar_t__ value; } ;
typedef  scalar_t__ cmp_type ;
struct TYPE_2__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ FIELD_STR ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct ref_array_item*,size_t,struct atom_value**,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*) ; 
 int FUNC3 (char const*,char const*) ; 
 int FUNC4 (char const*,char const*) ; 
 TYPE_1__* used_atom ; 
 int FUNC5 (char const*,char const*) ; 

__attribute__((used)) static int FUNC6(struct ref_sorting *s, struct ref_array_item *a, struct ref_array_item *b)
{
	struct atom_value *va, *vb;
	int cmp;
	cmp_type cmp_type = used_atom[s->atom].type;
	int (*cmp_fn)(const char *, const char *);
	struct strbuf err = STRBUF_INIT;

	if (FUNC1(a, s->atom, &va, &err))
		FUNC0("%s", err.buf);
	if (FUNC1(b, s->atom, &vb, &err))
		FUNC0("%s", err.buf);
	FUNC2(&err);
	cmp_fn = s->ignore_case ? strcasecmp : strcmp;
	if (s->version)
		cmp = FUNC5(va->s, vb->s);
	else if (cmp_type == FIELD_STR)
		cmp = cmp_fn(va->s, vb->s);
	else {
		if (va->value < vb->value)
			cmp = -1;
		else if (va->value == vb->value)
			cmp = cmp_fn(a->refname, b->refname);
		else
			cmp = 1;
	}

	return (s->reverse) ? -cmp : cmp;
}