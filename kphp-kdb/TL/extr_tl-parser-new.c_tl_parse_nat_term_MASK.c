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
struct tree {scalar_t__ type; int nc; int /*<<< orphan*/ * c; } ;
struct tl_combinator_tree {scalar_t__ type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TL_FAIL ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct tl_combinator_tree* FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ type_nat_term ; 
 scalar_t__ type_num ; 
 scalar_t__ type_num_value ; 

struct tl_combinator_tree *FUNC4 (struct tree *T, int s) {
  FUNC2 (T->type == type_nat_term);
  FUNC2 (T->nc == 1);
  struct tl_combinator_tree *Z = FUNC3 (T->c[0], s);
  if (!Z || (Z->type != type_num && Z->type != type_num_value)) { if (Z) { FUNC0 ("nat_term: found type %s\n", FUNC1 (Z->type)); }TL_FAIL; }
  return Z;
}