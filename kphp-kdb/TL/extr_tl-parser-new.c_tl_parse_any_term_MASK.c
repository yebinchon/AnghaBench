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
struct tree {int type; } ;
struct tl_combinator_tree {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 struct tl_combinator_tree* FUNC2 (struct tree*,int) ; 
 struct tl_combinator_tree* FUNC3 (struct tree*,int) ; 
 struct tl_combinator_tree* FUNC4 (struct tree*,int) ; 
 struct tl_combinator_tree* FUNC5 (struct tree*,int) ; 
 struct tl_combinator_tree* FUNC6 (struct tree*,int) ; 
 struct tl_combinator_tree* FUNC7 (struct tree*,int) ; 
 struct tl_combinator_tree* FUNC8 (struct tree*,int) ; 
#define  type_expr 135 
#define  type_nat_const 134 
#define  type_nat_term 133 
#define  type_subexpr 132 
#define  type_term 131 
#define  type_type_ident 130 
#define  type_type_term 129 
#define  type_var_ident 128 

struct tl_combinator_tree *FUNC9 (struct tree *T, int s) {
  switch (T->type) {
  case type_type_term:
    return FUNC8 (T, s);
  case type_nat_term:
    return FUNC5 (T, s);
  case type_term:
    return FUNC7 (T, s);
  case type_expr:
    return FUNC2 (T, s);
  case type_subexpr:
    return FUNC6 (T, s);
  case type_nat_const:
    return FUNC4 (T, s);
  case type_type_ident:
  case type_var_ident:
    return FUNC3 (T, s);
  default:
    FUNC1 (stderr, "type = %d\n", T->type);
    FUNC0 (0);
    return 0;    
  }
}