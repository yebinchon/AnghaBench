#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct symbol {int defined; TYPE_3__* type; } ;
typedef  TYPE_3__* Type ;
struct TYPE_11__ {int oldstyle; TYPE_3__** proto; } ;
struct TYPE_12__ {TYPE_1__ f; } ;
struct TYPE_13__ {TYPE_2__ u; } ;
typedef  struct symbol* Symbol ;
typedef  int /*<<< orphan*/ * List ;

/* Variables and functions */
 int Aflag ; 
#define  CHAR 130 
 size_t ELLIPSIS ; 
 int /*<<< orphan*/  FUNC ; 
 size_t ID ; 
#define  IF 129 
 int /*<<< orphan*/  PERM ; 
 size_t REGISTER ; 
#define  STATIC 128 
 int /*<<< orphan*/ * FUNC0 (struct symbol*,int /*<<< orphan*/ *) ; 
 struct symbol* FUNC1 (int,char*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ,char**,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 size_t FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 TYPE_3__* inttype ; 
 scalar_t__ FUNC7 (size_t,int /*<<< orphan*/ ) ; 
 scalar_t__* kind ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 struct symbol** FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 TYPE_3__** FUNC10 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char,char*) ; 
 int /*<<< orphan*/  FUNC12 (int*) ; 
 int /*<<< orphan*/  src ; 
 char* FUNC13 (int) ; 
 size_t t ; 
 char* token ; 
 int /*<<< orphan*/  tsym ; 
 TYPE_3__* voidtype ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 

__attribute__((used)) static Symbol *FUNC15(Type fty) {
	List list = NULL;
	Symbol *params;

	if (kind[t] == STATIC || FUNC7(t, tsym)) {
		int n = 0;
		Type ty1 = NULL;
		for (;;) {
			Type ty;
			int sclass = 0;
			char *id = NULL;
			if (ty1 && t == ELLIPSIS) {
				static struct symbol sentinel;
				if (sentinel.type == NULL) {
					sentinel.type = voidtype;
					sentinel.defined = 1;
				}
				if (ty1 == voidtype)
					FUNC3("illegal formal parameter types\n");
				list = FUNC0(&sentinel, list);
				t = FUNC5();
				break;
			}
			if (!FUNC7(t, tsym) && t != REGISTER)
				FUNC3("missing parameter type\n");
			n++;
			ty = FUNC2(FUNC12(&sclass), &id, NULL, 1);
			if ( (ty == voidtype && (ty1 || id))
			||  ty1 == voidtype)
				FUNC3("illegal formal parameter types\n");
			if (id == NULL)
				id = FUNC13(n);
			if (ty != voidtype)
				list = FUNC0(FUNC1(sclass, id, ty, &src), list);
			if (Aflag >= 1 && !FUNC6(ty))
				FUNC14("missing prototype\n");
			if (ty1 == NULL)
				ty1 = ty;
			if (t != ',')
				break;
			t = FUNC5();
		}
		fty->u.f.proto = FUNC10(FUNC8(list) + 1,
			sizeof (Type *), PERM);
		params = FUNC9(&list, FUNC);
		for (n = 0; params[n]; n++)
			fty->u.f.proto[n] = params[n]->type;
		fty->u.f.proto[n] = NULL;
		fty->u.f.oldstyle = 0;
	} else {
		if (t == ID)
			for (;;) {
				Symbol p;
				if (t != ID) {
					FUNC3("expecting an identifier\n");
					break;
				}
				p = FUNC1(0, token, inttype, &src);
				p->defined = 0;
				list = FUNC0(p, list);
				t = FUNC5();
				if (t != ',')
					break;
				t = FUNC5();
			}
		params = FUNC9(&list, FUNC);
		fty->u.f.proto = NULL;
		fty->u.f.oldstyle = 1;
	}
	if (t != ')') {
		static char stop[] = { CHAR, STATIC, IF, ')', 0 };
		FUNC4(')');
		FUNC11('{', stop);
	}
	if (t == ')')
		t = FUNC5();
	return params;
}