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
typedef  int /*<<< orphan*/  zval ;
struct tl_tree {int dummy; } ;
struct tl_combinator {char* id; int /*<<< orphan*/  IP; int /*<<< orphan*/  var_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  TLUNI_NEXT ; 
 void* FUNC0 (int /*<<< orphan*/ ,void**,int /*<<< orphan*/ **,struct tl_tree**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/ ** FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct tl_tree** FUNC3 (struct tl_tree**,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  stderr ; 
 struct tl_combinator* FUNC5 (char*) ; 

void *FUNC6 (void **IP, void **Data, zval **arr, struct tl_tree **vars) {
  zval **r = FUNC2 (*arr, "_", 0);
  if (!r) { return 0;}
  int l;
  char *s = FUNC4 (r, &l);
  struct tl_combinator *c = FUNC5 (s);
#ifdef VLOG
  fprintf (stderr, "Storing functions %s\n", c->id);
#endif
  if (!c) { return 0; }
  struct tl_tree **new_vars = FUNC3 (vars, c->var_num);
  if (!new_vars) {
    return 0;
  }
  void *res = FUNC0 (c->IP, Data, arr, new_vars);
  if (!res) { return 0; }
  *(Data ++) = res;
  TLUNI_NEXT;
}