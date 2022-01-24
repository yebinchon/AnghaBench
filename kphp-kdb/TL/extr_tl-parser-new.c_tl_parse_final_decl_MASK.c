#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tree {scalar_t__ type; int nc; TYPE_1__** c; } ;
struct TYPE_4__ {int type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 
 scalar_t__ type_final_decl ; 
#define  type_final_empty 130 
#define  type_final_final 129 
#define  type_final_new 128 

int FUNC4 (struct tree *T, int fun) {
  FUNC0 (T->type == type_final_decl);
  FUNC0 (!fun);
  FUNC0 (T->nc == 1);
  switch (T->c[0]->type) {
  case type_final_new:
    return FUNC3 (T->c[0]);
  case type_final_final:
    return FUNC2 (T->c[0]);
  case type_final_empty:
    return FUNC1 (T->c[0]);
  default:
    FUNC0 (0);
    return 0;
  }
}