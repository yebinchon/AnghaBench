#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  cdr; int /*<<< orphan*/  car; } ;
typedef  TYPE_2__ node ;
struct TYPE_15__ {TYPE_1__* irep; int /*<<< orphan*/  iseq; scalar_t__ sp; int /*<<< orphan*/  mrb; } ;
typedef  TYPE_3__ codegen_scope ;
struct TYPE_13__ {int rlen; } ;

/* Variables and functions */
 int /*<<< orphan*/  OP_RETURN ; 
 int /*<<< orphan*/  OP_STOP ; 
 int /*<<< orphan*/  VAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(codegen_scope *s, node *tree, int val)
{
  codegen_scope *scope = FUNC5(s->mrb, s, tree->car);
  if (scope == NULL) {
    FUNC1(s, "unexpected scope");
  }

  FUNC0(scope, tree->cdr, VAL);
  FUNC2(scope, OP_RETURN, scope->sp-1);
  if (!s->iseq) {
    FUNC3(scope, OP_STOP);
  }
  FUNC4(scope);
  if (!s->irep) {
    /* should not happen */
    return 0;
  }
  return s->irep->rlen - 1;
}