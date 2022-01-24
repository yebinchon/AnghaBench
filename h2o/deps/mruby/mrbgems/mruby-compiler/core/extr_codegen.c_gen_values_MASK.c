#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__* cdr; TYPE_3__* car; } ;
typedef  TYPE_1__ node ;
typedef  int /*<<< orphan*/  codegen_scope ;
struct TYPE_5__ {int /*<<< orphan*/  car; struct TYPE_5__* cdr; } ;

/* Variables and functions */
 int CALL_MAXARGS ; 
 scalar_t__ NODE_ARRAY ; 
 scalar_t__ NODE_SPLAT ; 
 int NOVAL ; 
 int /*<<< orphan*/  OP_ARRAY ; 
 int /*<<< orphan*/  OP_ARYCAT ; 
 int /*<<< orphan*/  OP_ARYPUSH ; 
 int VAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static int
FUNC8(codegen_scope *s, node *t, int val, int extra)
{
  int n = 0;
  int is_splat;

  while (t) {
    is_splat = FUNC4(t->car->car) == NODE_SPLAT; /* splat mode */
    if (
      n+extra >= CALL_MAXARGS - 1 /* need to subtract one because vm.c expects an array if n == CALL_MAXARGS */
      || is_splat) {
      if (val) {
        if (is_splat && n == 0 && FUNC4(t->car->cdr->car) == NODE_ARRAY) {
          FUNC0(s, t->car->cdr, VAL);
          FUNC5();
        }
        else {
          FUNC6(n);
          FUNC3(s, OP_ARRAY, FUNC1(), n);
          FUNC7();
          FUNC0(s, t->car, VAL);
          FUNC5(); FUNC5();
          if (is_splat) {
            FUNC2(s, OP_ARYCAT, FUNC1());
          }
          else {
            FUNC2(s, OP_ARYPUSH, FUNC1());
          }
        }
        t = t->cdr;
        while (t) {
          FUNC7();
          FUNC0(s, t->car, VAL);
          FUNC5(); FUNC5();
          if (FUNC4(t->car->car) == NODE_SPLAT) {
            FUNC2(s, OP_ARYCAT, FUNC1());
          }
          else {
            FUNC2(s, OP_ARYPUSH, FUNC1());
          }
          t = t->cdr;
        }
      }
      else {
        while (t) {
          FUNC0(s, t->car, NOVAL);
          t = t->cdr;
        }
      }
      return -1;
    }
    /* normal (no splat) mode */
    FUNC0(s, t->car, val);
    n++;
    t = t->cdr;
  }
  return n;
}