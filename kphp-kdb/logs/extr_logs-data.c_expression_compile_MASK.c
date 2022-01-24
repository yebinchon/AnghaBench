#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  type_desc ;
struct TYPE_3__ {char* s; int /*<<< orphan*/ * root; int /*<<< orphan*/ * token_list; } ;
typedef  TYPE_1__ expression ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/ * _cur_type ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 

char *FUNC8 (expression *e, char *s, type_desc *cur_type) {
  FUNC7();
  _cur_type = cur_type;

  e->s = s;
  e->token_list = FUNC5 (s);

  if (e->token_list == NULL) {
    FUNC0 ("can't split query [%s] into tokens", s);
  }

  e->root = FUNC4 (e->token_list);
  if (e->root == NULL) {
    FUNC2 (e->token_list);
    FUNC0 ("can't parse query [%s] as arithmetic expression", s);
  }

  int res = FUNC6 (e->root);
  if (!res) {
    FUNC2 (e->token_list);
    FUNC1 (e->root);
    FUNC0 ("can't parse query [%s] as arithmetic expression", s);
  }

  res = FUNC3 (e->root);
  if (!res) {
    FUNC2 (e->token_list);
    FUNC1 (e->root);
    FUNC0 ("can't prepare expression [%s]", s);
  }

  return NULL;
}