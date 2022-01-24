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
struct tl_var {int type; scalar_t__ flags; struct tl_combinator_tree* ptr; int /*<<< orphan*/  id; } ;
struct tl_combinator_tree {int dummy; } ;

/* Variables and functions */
 struct tl_var** last_num_var ; 
 int /*<<< orphan*/  FUNC0 () ; 
 size_t namespace_level ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct tl_var*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct tl_var*) ; 
 int /*<<< orphan*/ * vars ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char*) ; 
 struct tl_var* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

struct tl_var *FUNC6 (char *id, struct tl_combinator_tree *ptr, int type) {
  FUNC3 (2, "Add var %s\n", id);
  struct tl_var *v = FUNC4 (sizeof (*v));
  v->id = FUNC5 (id);
  v->type = type;
  v->ptr = ptr;
  v->flags = 0;
  if (FUNC2 (vars[namespace_level], v)) {
    return 0;
  }
  vars[namespace_level] = FUNC1 (vars[namespace_level], v, FUNC0 ());
  if (type) {
    last_num_var[namespace_level] = v;
  }
  return v;
}