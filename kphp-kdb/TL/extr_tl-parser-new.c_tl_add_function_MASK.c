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
struct tl_type {int dummy; } ;
struct tl_constructor {char* id; unsigned int name; char* print_id; scalar_t__ right; scalar_t__ left; scalar_t__ real_id; struct tl_type* type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 int /*<<< orphan*/  tl_function_tree ; 
 int /*<<< orphan*/  total_functions_num ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct tl_constructor*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,struct tl_constructor*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 void* FUNC8 (int) ; 
 char* FUNC9 (char*) ; 

struct tl_constructor *FUNC10 (struct tl_type *a, const char *_id, int len, int force_magic) {
//  assert (a);
  int x = 0;
  while (x < len && ((_id[x] != '#') || force_magic)) { x++; }
  char *id = FUNC8 (x + 1);
  FUNC3 (id, _id, x);
  id[x] = 0;
  FUNC6 (2, "Add function %s\n", id);

  unsigned magic = 0;
  if (x < len) {
    FUNC1 (len - x == 9);
    int i;
    for (i = 1; i <= 8; i++) {
      magic = (magic << 4) + (_id[x + i] <= '9' ? _id[x + i] - '0' : _id[x + i] - 'a' + 10);
    }
    FUNC1 (magic && magic != -1);
  }

  struct tl_constructor _t = {.id = id};
  if (FUNC5 (tl_function_tree, &_t)) {
    FUNC0 ("Duplicate function id `%s`\n", id);
    FUNC7 (id, len + 1);
    return 0;
  }

  struct tl_constructor *t = FUNC8 (sizeof (*t));
  t->type = a;
  t->name = magic;
  t->id = id; 
  t->print_id = FUNC9 (id);
  t->real_id = 0;

  int i;
  for (i = 0; i < len; i++) if (t->print_id[i] == '.' || t->print_id[i] == '#' || t->print_id[i] == ' ') {
    t->print_id[i] = '$';
  }

  t->left = t->right = 0;
  tl_function_tree = FUNC4 (tl_function_tree, t, FUNC2 ());
  total_functions_num ++;
  return t;
}