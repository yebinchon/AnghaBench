#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tree {scalar_t__ type; int nc; TYPE_1__** c; } ;
struct TYPE_3__ {scalar_t__ type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  TL_FAIL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_1__*,int) ; 
 int FUNC3 (TYPE_1__*) ; 
 scalar_t__ type_partial_app_decl ; 
 scalar_t__ type_partial_comb_app_decl ; 

int FUNC4 (struct tree *T, int fun) {
  FUNC1 (T->type == type_partial_app_decl);
  FUNC1 (T->nc == 1);
  if (T->c[0]->type == type_partial_comb_app_decl) {
    return FUNC2 (T->c[0], fun);
  } else {
    if (fun) {
      FUNC0 ("Partial type app in functions block\n");
      TL_FAIL;
    }
    return FUNC3 (T->c[0]);
  }
}