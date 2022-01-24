#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct tree {scalar_t__ type; int nc; TYPE_1__** c; } ;
struct TYPE_5__ {int type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*,int) ; 
 int FUNC2 (TYPE_1__*,int) ; 
 int FUNC3 (TYPE_1__*,int) ; 
 int FUNC4 (TYPE_1__*,int) ; 
#define  type_builtin_combinator_decl 131 
#define  type_combinator_decl 130 
 scalar_t__ type_declaration ; 
#define  type_final_decl 129 
#define  type_partial_app_decl 128 

int FUNC5 (struct tree *T, int fun) {
  FUNC0 (T->type == type_declaration);
  FUNC0 (T->nc == 1);
  switch (T->c[0]->type) {
  case type_combinator_decl:
    return FUNC2 (T->c[0], fun);
  case type_partial_app_decl:
    return FUNC4 (T->c[0], fun);
  case type_final_decl:
    return FUNC3 (T->c[0], fun);
  case type_builtin_combinator_decl:
    return FUNC1 (T->c[0], fun);
  default:
    FUNC0 (0);
    return 0;
  }
}