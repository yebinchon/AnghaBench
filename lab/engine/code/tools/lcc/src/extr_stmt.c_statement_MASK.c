#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_46__   TYPE_9__ ;
typedef  struct TYPE_45__   TYPE_8__ ;
typedef  struct TYPE_44__   TYPE_7__ ;
typedef  struct TYPE_43__   TYPE_6__ ;
typedef  struct TYPE_42__   TYPE_5__ ;
typedef  struct TYPE_41__   TYPE_4__ ;
typedef  struct TYPE_40__   TYPE_3__ ;
typedef  struct TYPE_39__   TYPE_2__ ;
typedef  struct TYPE_38__   TYPE_28__ ;
typedef  struct TYPE_37__   TYPE_22__ ;
typedef  struct TYPE_36__   TYPE_1__ ;
typedef  struct TYPE_35__   TYPE_18__ ;
typedef  struct TYPE_34__   TYPE_12__ ;
typedef  struct TYPE_33__   TYPE_11__ ;
typedef  struct TYPE_32__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Type ;
typedef  TYPE_10__* Tree ;
struct TYPE_45__ {int label; } ;
struct TYPE_46__ {TYPE_8__ l; } ;
struct TYPE_43__ {int label; } ;
struct TYPE_44__ {TYPE_6__ f; } ;
struct TYPE_41__ {int label; } ;
struct TYPE_42__ {TYPE_4__ l; } ;
struct TYPE_39__ {int /*<<< orphan*/  i; int /*<<< orphan*/  u; } ;
struct TYPE_40__ {TYPE_2__ v; } ;
struct TYPE_38__ {TYPE_7__ u; int /*<<< orphan*/  type; } ;
struct TYPE_37__ {TYPE_5__ u; } ;
struct TYPE_36__ {int /*<<< orphan*/  type; } ;
struct TYPE_35__ {int /*<<< orphan*/  op; } ;
struct TYPE_34__ {int lab; TYPE_22__* deflab; TYPE_1__* sym; } ;
struct TYPE_33__ {TYPE_9__ u; int /*<<< orphan*/  src; int /*<<< orphan*/  scope; } ;
struct TYPE_32__ {TYPE_3__ u; TYPE_18__* type; int /*<<< orphan*/  op; } ;
typedef  TYPE_11__* Symbol ;
typedef  TYPE_12__* Swtch ;

/* Variables and functions */
 int Aflag ; 
#define  BREAK 139 
#define  CASE 138 
 int /*<<< orphan*/  CNST ; 
#define  CONTINUE 137 
#define  DEFAULT 136 
#define  DO 135 
 int EOI ; 
#define  FOR 134 
 int /*<<< orphan*/  FUNC ; 
#define  GOTO 133 
#define  ID 132 
#define  IF 131 
 int /*<<< orphan*/  LABELS ; 
#define  RETURN 130 
 int /*<<< orphan*/  STMT ; 
#define  SWITCH 129 
 int /*<<< orphan*/  UNSIGNED ; 
#define  WHILE 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_12__*,int /*<<< orphan*/ ,int) ; 
 TYPE_10__* FUNC2 (TYPE_10__*,int /*<<< orphan*/ ) ; 
 TYPE_28__* cfunc ; 
 int /*<<< orphan*/  FUNC3 (int,TYPE_12__*,int) ; 
 TYPE_10__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (void*,TYPE_12__*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ) ; 
 TYPE_10__* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,TYPE_18__*) ; 
 TYPE_22__* FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (void*,TYPE_12__*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 void* FUNC18 (int) ; 
 char FUNC19 () ; 
 int FUNC20 () ; 
 int /*<<< orphan*/  glevel ; 
 int /*<<< orphan*/  FUNC21 (void*,int,TYPE_12__*,int) ; 
 TYPE_11__* FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_18__*) ; 
 int const* kind ; 
 int /*<<< orphan*/  FUNC24 (TYPE_10__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_11__* FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  needconst ; 
 int nodecount ; 
 float refinc ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  src ; 
 int /*<<< orphan*/  FUNC28 () ; 
 int /*<<< orphan*/  stmtlabs ; 
 int /*<<< orphan*/  FUNC29 (int,void*,int) ; 
 int t ; 
 int /*<<< orphan*/  FUNC30 (char,char*) ; 
 int /*<<< orphan*/  token ; 
 int /*<<< orphan*/  FUNC31 (TYPE_11__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  voidtype ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (char*) ; 
 int /*<<< orphan*/  FUNC34 (void*,TYPE_12__*,int) ; 

void FUNC35(int loop, Swtch swp, int lev) {
	float ref = refinc;

	if (Aflag >= 2 && lev == 15)
		FUNC33("more than 15 levels of nested statements\n");
	switch (t) {
	case IF:       FUNC21(FUNC18(2), loop, swp, lev + 1);
 break;
	case WHILE:    FUNC34(FUNC18(3), swp, lev + 1); break;
	case DO:       FUNC8(FUNC18(3), swp, lev + 1); FUNC10(';');
					break;

	case FOR:      FUNC15(FUNC18(4), swp, lev + 1);
 break;
	case BREAK:    FUNC32(NULL, 0, 0);
		       FUNC7(NULL);
		       if (swp && swp->lab > loop)
		       	FUNC0(swp->lab + 1);
		       else if (loop)
		       	FUNC0(loop + 2);
		       else
		       	FUNC9("illegal break statement\n");
		       t = FUNC20(); FUNC10(';');
					   break;

	case CONTINUE: FUNC32(NULL, 0, 0);
		       FUNC7(NULL);
		       if (loop)
		       	FUNC0(loop + 1);
		       else
		       	FUNC9("illegal continue statement\n");
		       t = FUNC20(); FUNC10(';');
					      break;

	case SWITCH:   FUNC29(loop, FUNC18(2), lev + 1);
 break;
	case CASE:     {
		       	int lab = FUNC18(1);
		       	if (swp == NULL)
		       		FUNC9("illegal case label\n");
		       	FUNC6(lab);
		       	while (t == CASE) {
		       		static char stop[] = { IF, ID, 0 };
		       		Tree p;
		       		t = FUNC20();
		       		p = FUNC4(0);
		       		if (FUNC17(p->op) == CNST && FUNC23(p->type)) {
		       			if (swp) {
		       				needconst++;
		       				p = FUNC2(p, swp->sym->type);
		       				if (p->type->op == UNSIGNED)
		       					p->u.v.i = FUNC13(p->u.v.u, p->type);
		       				needconst--;
		       				FUNC1(swp, p->u.v.i, lab);
		       			}
		       		} else
		       			FUNC9("case label must be a constant integer expression\n");

		       		FUNC30(':', stop);
		       	}
		       	FUNC35(loop, swp, lev);
		       } break;
	case DEFAULT:  if (swp == NULL)
		       	FUNC9("illegal default label\n");
		       else if (swp->deflab)
		       	FUNC9("extra default label\n");
		       else {
		       	swp->deflab = FUNC14(swp->lab);
		       	FUNC6(swp->deflab->u.l.label);
		       }
		       t = FUNC20();
		       FUNC10(':');
		       FUNC35(loop, swp, lev); break;
	case RETURN:   {
		       	Type rty = FUNC16(cfunc->type);
		       	t = FUNC20();
		       	FUNC7(NULL);
		       	if (t != ';')
		       		if (rty == voidtype) {
		       			FUNC9("extraneous return value\n");
		       			FUNC11(0);
		       			FUNC26(NULL);
		       		} else
		       			FUNC26(FUNC11(0));
		       	else {
		       		if (rty != voidtype)
		       			FUNC33("missing return value\n");
		       		FUNC26(NULL);
		       	}
		       	FUNC0(cfunc->u.f.label);
		       } FUNC10(';');
					    break;

	case '{':      FUNC3(loop, swp, lev + 1); break;
	case ';':      FUNC7(NULL); t = FUNC20(); break;
	case GOTO:     FUNC32(NULL, 0, 0);
		       FUNC7(NULL);
		       t = FUNC20();
		       if (t == ID) {
		       	Symbol p = FUNC25(token, stmtlabs);
		       	if (p == NULL) {
				p = FUNC22(token, &stmtlabs, 0, FUNC);
				p->scope = LABELS;
				p->u.l.label = FUNC18(1);
				p->src = src;
			}
		       	FUNC31(p, src);
		       	FUNC0(p->u.l.label);
		       	t = FUNC20();
		       } else
		       	FUNC9("missing label in goto\n"); FUNC10(';');
					  break;

	case ID:       if (FUNC19() == ':') {
		       	FUNC28();
		       	FUNC35(loop, swp, lev);
		       	break;
		       }
	default:       FUNC7(NULL);
		       if (kind[t] != ID) {
		       	FUNC9("unrecognized statement\n");
		       	t = FUNC20();
		       } else {
		       	Tree e = FUNC12(0);
		       	FUNC24(e, 0, 0);
		       	if (nodecount == 0 || nodecount > 200)
		       		FUNC32(NULL, 0, 0);
		       	else if (glevel) FUNC32(NULL, 0, 0);
		       	FUNC5(STMT);
		       } FUNC10(';');
						break;

	}
	if (kind[t] != IF && kind[t] != ID
	&& t != '}' && t != EOI) {
		static char stop[] = { IF, ID, '}', 0 };
		FUNC9("illegal statement termination\n");
		FUNC27(0, stop);
	}
	refinc = ref;
}