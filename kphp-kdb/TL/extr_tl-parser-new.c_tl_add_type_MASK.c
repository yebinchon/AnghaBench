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
struct tl_type {char* id; int params_num; long long params_types; char* print_id; int flags; scalar_t__ real_id; scalar_t__ constructors; scalar_t__ constructors_num; scalar_t__ name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 int /*<<< orphan*/  tl_type_tree ; 
 int /*<<< orphan*/  total_types_num ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct tl_type*,int /*<<< orphan*/ ) ; 
 struct tl_type** FUNC5 (int /*<<< orphan*/ ,struct tl_type*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 void* FUNC8 (int) ; 
 char* FUNC9 (char*) ; 

struct tl_type *FUNC10 (const char *_id, int len, int params_num, long long params_types) {
  char *id = FUNC8 (len + 1);
  FUNC3 (id, _id, len);
  id[len] = 0;
  FUNC6 (2, "Add type %s\n", id);
  struct tl_type _t = {.id = id};
  struct tl_type **_r = 0;
  if ((_r = FUNC5 (tl_type_tree, &_t))) {
    FUNC7 (id, len + 1);
    if (params_num >= 0 && ((*_r)->params_num != params_num || (*_r)->params_types != params_types)) {
      FUNC0 ("Wrong params_num or types for type %s\n", (*_r)->id);
      return 0;
    }
    return *_r;
  }
  struct tl_type *t = FUNC8 (sizeof (*t));
  t->id = id;
  t->print_id = FUNC9 (t->id);
  int i;
  for (i = 0; i < len; i++) if (t->print_id[i] == '.' || t->print_id[i] == '#' || t->print_id[i] == ' ') {
    t->print_id[i] = '$';
  }
  t->name = 0;
  t->constructors_num = 0;
  t->constructors = 0;
  t->flags = 0;
  t->real_id = 0;
  if (params_num >= 0) {
    FUNC1 (params_num <= 64);
    t->params_num = params_num;
    t->params_types = params_types;
  } else {
    t->flags |= 4;
    t->params_num = -1;
  }
  tl_type_tree = FUNC4 (tl_type_tree, t, FUNC2 ());
  total_types_num ++;
  return t;
}