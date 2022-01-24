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
struct tree {scalar_t__ type; int len; long long* text; int /*<<< orphan*/  nc; } ;
struct tl_combinator_tree {long long type_flags; int /*<<< orphan*/  type; int /*<<< orphan*/  act; } ;

/* Variables and functions */
 struct tl_combinator_tree* L ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  TL_FAIL ; 
 int /*<<< orphan*/  FUNC1 (struct tl_combinator_tree*) ; 
 int /*<<< orphan*/  act_nat_const ; 
 struct tl_combinator_tree* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ type_nat_const ; 
 int /*<<< orphan*/  type_num_value ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int,int,long long*) ; 

struct tl_combinator_tree *FUNC5 (struct tree *T, int s) {
  FUNC3 (T->type == type_nat_const);
  FUNC3 (!T->nc);
  FUNC4 (2, "tl_parse_nat_const: s = %d, val = %.*s\n", s, T->len, T->text);
  if (s > 0) {
    FUNC0 ("Nat const can not preceed with %%\n");
    TL_FAIL;
  }
  FUNC3 (T->type == type_nat_const);
  FUNC3 (!T->nc);
  FUNC1 (L);
  L = FUNC2 ();
  L->act = act_nat_const;
  L->type = type_num_value;
  int i;
  long long x = 0;
  for (i = 0; i < T->len; i++) {
    x = x * 10 + T->text[i] - '0';
  }
  L->type_flags = x;
  return L;
}