#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct tl_var_value {long long num_val; struct tl_combinator_tree* val; } ;
struct tl_combinator_tree {scalar_t__ type; scalar_t__ type_flags; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  _T ; 
 scalar_t__ __tok ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct tl_combinator_tree* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ type_num ; 
 scalar_t__ type_num_value ; 
 scalar_t__ type_type ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 

void FUNC4 (struct tl_var_value v) {
  if (!__tok) { return; }
  long long x = v.num_val;
  struct tl_combinator_tree *L = v.val;
  if (L->type == type_type) { return;}
  while (1) {
    if (L->type == type_num_value) {
      if (x + L->type_flags < 0) {
        __tok = 0;
        FUNC3 (3, "Variable has negative value. Error.\n");
        return;
      } else {
        return;
      }
    }
    FUNC0 (L->type == type_num);
    x += L->type_flags;
    x += FUNC2 (_T, L->data);
    L = FUNC1 (_T, L->data);
    if (!L) { return;}
  }
}