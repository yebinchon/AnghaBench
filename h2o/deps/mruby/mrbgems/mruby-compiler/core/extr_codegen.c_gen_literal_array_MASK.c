#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct TYPE_6__* cdr; TYPE_4__* car; } ;
typedef  TYPE_2__ node ;
typedef  scalar_t__ mrb_bool ;
typedef  int /*<<< orphan*/  codegen_scope ;
struct TYPE_7__ {int /*<<< orphan*/  car; TYPE_1__* cdr; } ;
struct TYPE_5__ {int /*<<< orphan*/  cdr; } ;

/* Variables and functions */
#define  NODE_BEGIN 131 
#define  NODE_BLOCK 130 
#define  NODE_LITERAL_DELIM 129 
#define  NODE_STR 128 
 int /*<<< orphan*/  NOVAL ; 
 int /*<<< orphan*/  OP_ARRAY ; 
 int /*<<< orphan*/  OP_STRCAT ; 
 int /*<<< orphan*/  VAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static void
FUNC9(codegen_scope *s, node *tree, mrb_bool sym, int val)
{
  if (val) {
    int i = 0, j = 0;

    while (tree) {
      switch (FUNC5(tree->car->car)) {
      case NODE_STR:
        if ((tree->cdr == NULL) && (FUNC5(tree->car->cdr->cdr) == 0))
          break;
        /* fall through */
      case NODE_BEGIN:
        FUNC0(s, tree->car, VAL);
        ++j;
        break;

      case NODE_LITERAL_DELIM:
        if (j > 0) {
          j = 0;
          ++i;
          if (sym)
            FUNC2(s);
        }
        break;
      }
      while (j >= 2) {
        FUNC6(); FUNC6();
        FUNC3(s, OP_STRCAT, FUNC1());
        FUNC8();
        j--;
      }
      tree = tree->cdr;
    }
    if (j > 0) {
      ++i;
      if (sym)
        FUNC2(s);
    }
    FUNC7(i);
    FUNC4(s, OP_ARRAY, FUNC1(), i);
    FUNC8();
  }
  else {
    while (tree) {
      switch (FUNC5(tree->car->car)) {
      case NODE_BEGIN: case NODE_BLOCK:
        FUNC0(s, tree->car, NOVAL);
      }
      tree = tree->cdr;
    }
  }
}