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
struct tl_type {scalar_t__ extra; scalar_t__ constructors_num; struct tl_combinator** constructors; } ;
struct tl_combinator {int is_fun; struct tl_combinator* id; void* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (struct tl_combinator*) ; 
 scalar_t__ FUNC5 (struct tl_combinator*) ; 
 int FUNC6 (struct tl_combinator*) ; 
 int /*<<< orphan*/  tl_constructors ; 
 int /*<<< orphan*/  FUNC7 (struct tl_combinator*) ; 
 int /*<<< orphan*/  FUNC8 (struct tl_combinator*) ; 
 int /*<<< orphan*/  tl_functions ; 
 scalar_t__ FUNC9 () ; 
 void* FUNC10 () ; 
 scalar_t__ FUNC11 (struct tl_combinator**) ; 
 struct tl_type* FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (struct tl_combinator*,int) ; 
 struct tl_combinator* FUNC14 (int) ; 

struct tl_combinator *FUNC15 (int v) {
  struct tl_combinator *c = FUNC14 (sizeof (*c));
  c->name = FUNC10 ();
  if (FUNC9 () || FUNC11 (&c->id) < 0) {
    FUNC13 (c, sizeof (*c));
    return 0;
  }
  FUNC0 (FUNC6 (c->id));
  FUNC2 (FUNC6 (c->id));
  int x = FUNC10 ();
  struct tl_type *t = FUNC12 (x);
  if (!t && (x || v != 3)) {
    FUNC1 (FUNC6 (c->id));
    FUNC13 (c->id, FUNC6 (c->id));
    FUNC13 (c, sizeof (*c));
    return 0;
  }
  FUNC3 (t || (!x && v == 3));
  if (v == 2) {
    if (t->extra >= t->constructors_num) {
      FUNC13 (c, sizeof (*c));
      return 0;
    }
    FUNC3 (t->extra < t->constructors_num);
    t->constructors[t->extra ++] = c;
    tl_constructors ++;
    c->is_fun = 0;
  } else {
    FUNC3 (v == 3);
    FUNC7 (c);
    FUNC8 (c);
    tl_functions ++;
    c->is_fun = 1;
  }
  if (FUNC4 (c) < 0) { 
    //delete_combinator (c);
    return 0; 
  }
  if (FUNC5 (c) < 0) { 
    //delete_combinator (c);
    return 0; 
  }
  FUNC2 (sizeof (*c));
  return c;
}