#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ op; struct TYPE_5__** kids; TYPE_1__** syms; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_2__* Node ;

/* Variables and functions */
#define  ADD 160 
#define  ADDRF 159 
#define  ADDRG 158 
#define  ADDRL 157 
#define  ARG 156 
#define  ASGN 155 
 int /*<<< orphan*/  B ; 
#define  BAND 154 
#define  BCOM 153 
#define  BOR 152 
#define  BXOR 151 
#define  CALL 150 
#define  CNST 149 
#define  CVF 148 
#define  CVI 147 
#define  CVP 146 
#define  CVU 145 
#define  DIV 144 
#define  EQ 143 
#define  GE 142 
#define  GT 141 
#define  INDIR 140 
#define  JUMP 139 
#define  LABEL 138 
#define  LE 137 
 int LOAD ; 
#define  LSH 136 
#define  LT 135 
#define  MOD 134 
#define  MUL 133 
#define  NE 132 
#define  NEG 131 
 scalar_t__ P ; 
#define  RET 130 
#define  RSH 129 
#define  SUB 128 
 scalar_t__ VREG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC5(Node p) {
	if (p->op == VREG+P && p->syms[0]) {
		FUNC1(stderr, "VREGP(%s)", p->syms[0]->name);
		return;
	} else if (FUNC2(p->op) == LOAD) {
		FUNC1(stderr, "LOAD(");
		FUNC5(p->kids[0]);
		FUNC1(stderr, ")");
		return;
	}
	FUNC1(stderr, "%s(", FUNC3(p->op));
	switch (FUNC2(p->op)) {
	case CNST: case LABEL:
	case ADDRG: case ADDRF: case ADDRL:
		if (p->syms[0])
			FUNC1(stderr, "%s", p->syms[0]->name);
		break;
	case RET:
		if (p->kids[0])
			FUNC5(p->kids[0]);
		break;
	case CVF: case CVI: case CVP: case CVU: case JUMP: 
	case ARG: case BCOM: case NEG: case INDIR:
		FUNC5(p->kids[0]);
		break;
	case CALL:
		if (FUNC4(p->op) != B) {
			FUNC5(p->kids[0]);
			break;
		}
		/* else fall through */
	case EQ: case NE: case GT: case GE: case LE: case LT:
	case ASGN: case BOR: case BAND: case BXOR: case RSH: case LSH:
	case ADD: case SUB:  case DIV: case MUL: case MOD:
		FUNC5(p->kids[0]);
		FUNC1(stderr, ", ");
		FUNC5(p->kids[1]);
		break;
	default: FUNC0(0);
	}
	FUNC1(stderr, ")");
}