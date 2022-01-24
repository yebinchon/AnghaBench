#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {struct TYPE_21__* car; struct TYPE_21__* cdr; } ;
typedef  TYPE_1__ node ;
struct TYPE_22__ {struct TYPE_22__* prev; } ;
typedef  TYPE_2__ codegen_scope ;

/* Variables and functions */
#define  NODE_ARG 138 
#define  NODE_CALL 137 
#define  NODE_COLON2 136 
#define  NODE_CONST 135 
#define  NODE_CVAR 134 
#define  NODE_GVAR 133 
#define  NODE_IVAR 132 
#define  NODE_LVAR 131 
#define  NODE_MASGN 130 
#define  NODE_NIL 129 
#define  NODE_SCALL 128 
 int /*<<< orphan*/  NOVAL ; 
 int /*<<< orphan*/  OP_NOP ; 
 int /*<<< orphan*/  OP_SETCONST ; 
 int /*<<< orphan*/  OP_SETCV ; 
 int /*<<< orphan*/  OP_SETGV ; 
 int /*<<< orphan*/  OP_SETIV ; 
 int /*<<< orphan*/  OP_SETMCNST ; 
 int /*<<< orphan*/  OP_SETUPVAR ; 
 int /*<<< orphan*/  VAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC10 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC18(codegen_scope *s, node *tree, int sp, int val)
{
  int idx;
  int type = FUNC12(tree->car);

  tree = tree->cdr;
  switch (type) {
  case NODE_GVAR:
    idx = FUNC11(s, FUNC13(tree));
    FUNC8(s, OP_SETGV, sp, idx);
    break;
  case NODE_ARG:
  case NODE_LVAR:
    idx = FUNC10(s, FUNC13(tree));
    if (idx > 0) {
      if (idx != sp) {
        FUNC5(s, idx, sp, val);
        if (val && FUNC14(s)) FUNC7(s, OP_NOP);
      }
      break;
    }
    else {                      /* upvar */
      int lv = 0;
      codegen_scope *up = s->prev;

      while (up) {
        idx = FUNC10(up, FUNC13(tree));
        if (idx > 0) {
          FUNC9(s, OP_SETUPVAR, sp, idx, lv);
          break;
        }
        lv++;
        up = up->prev;
      }
    }
    break;
  case NODE_IVAR:
    idx = FUNC11(s, FUNC13(tree));
    FUNC8(s, OP_SETIV, sp, idx);
    break;
  case NODE_CVAR:
    idx = FUNC11(s, FUNC13(tree));
    FUNC8(s, OP_SETCV, sp, idx);
    break;
  case NODE_CONST:
    idx = FUNC11(s, FUNC13(tree));
    FUNC8(s, OP_SETCONST, sp, idx);
    break;
  case NODE_COLON2:
    FUNC5(s, FUNC2(), sp, 0);
    FUNC17();
    FUNC1(s, tree->car, VAL);
    FUNC16(2);
    idx = FUNC11(s, FUNC13(tree->cdr));
    FUNC8(s, OP_SETMCNST, sp, idx);
    break;

  case NODE_CALL:
  case NODE_SCALL:
    FUNC17();
    FUNC4(s, tree, FUNC0(s, FUNC13(tree->cdr->car)), sp, NOVAL,
             type == NODE_SCALL);
    FUNC15();
    if (val) {
      FUNC5(s, FUNC2(), sp, 0);
    }
    break;

  case NODE_MASGN:
    FUNC6(s, tree->car, sp, val);
    break;

  /* splat without assignment */
  case NODE_NIL:
    break;

  default:
#ifndef MRB_DISABLE_STDIO
    FUNC3(stderr, "unknown lhs %d\n", type);
#endif
    break;
  }
  if (val) FUNC17();
}