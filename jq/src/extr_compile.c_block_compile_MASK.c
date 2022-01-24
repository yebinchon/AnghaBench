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
struct symbol_table {int dummy; } ;
struct locfile {int dummy; } ;
struct cfunction {int dummy; } ;
struct bytecode {TYPE_1__* globals; int /*<<< orphan*/  debuginfo; scalar_t__ nclosures; scalar_t__ parent; } ;
typedef  int /*<<< orphan*/  jv ;
typedef  int /*<<< orphan*/  block ;
struct TYPE_2__ {int ncfunctions; int /*<<< orphan*/  cfunc_names; int /*<<< orphan*/  cfunctions; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct bytecode*) ; 
 int FUNC2 (struct bytecode*,int /*<<< orphan*/ ,struct locfile*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 void* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

int FUNC13(block b, struct bytecode** out, struct locfile* lf, jv args) {
  struct bytecode* bc = FUNC7(sizeof(struct bytecode));
  bc->parent = 0;
  bc->nclosures = 0;
  bc->globals = FUNC7(sizeof(struct symbol_table));
  int ncfunc = FUNC3(b);
  bc->globals->ncfunctions = 0;
  bc->globals->cfunctions = FUNC8(sizeof(struct cfunction), ncfunc);
  bc->globals->cfunc_names = FUNC4();
  bc->debuginfo = FUNC11(FUNC10(), FUNC12("name"), FUNC9());
  jv env = FUNC6();
  int nerrors = FUNC2(bc, b, lf, args, &env);
  FUNC5(args);
  FUNC5(env);
  FUNC0(bc->globals->ncfunctions == ncfunc);
  if (nerrors > 0) {
    FUNC1(bc);
    *out = 0;
  } else {
    *out = bc;
  }
  return nerrors;
}