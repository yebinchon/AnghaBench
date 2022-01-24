#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree_var_value_t ;
struct tree {scalar_t__ type; int nc; TYPE_1__** c; } ;
struct tl_constructor {char* id; int /*<<< orphan*/  name; int /*<<< orphan*/  real_id; scalar_t__ right; scalar_t__ left; int /*<<< orphan*/  type; } ;
struct tl_combinator_tree {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  len; int /*<<< orphan*/  text; } ;

/* Variables and functions */
 scalar_t__ L ; 
 scalar_t__ R ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  TL_FAIL ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ X ; 
 scalar_t__ Z ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  buf ; 
 int /*<<< orphan*/  buf_pos ; 
 scalar_t__ FUNC3 (scalar_t__,struct tl_combinator_tree**,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 struct tl_constructor* FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 struct tl_constructor* FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct tl_constructor*) ; 
 struct tl_constructor* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tl_constructor* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct tl_constructor*) ; 
 scalar_t__ FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ type_partial_comb_app_decl ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 

int FUNC19 (struct tree *T, int fun) {
  FUNC2 (T->type == type_partial_comb_app_decl);

  struct tl_constructor *c = !fun ? FUNC12 (T->c[0]->text, T->c[0]->len) : FUNC13 (T->c[0]->text, T->c[0]->len);
  if (!c) {
    FUNC0 ("Can not make partial app for undefined combinator\n");
    return 0;
  }

  //TL_INIT (K);
  //static char buf[1000];
  //int x = sprintf (buf, "%s", c->id);
  FUNC1 (L);
  FUNC1 (R);
  L = FUNC16 (c->left);
  R = FUNC16 (c->right);
 
 
  tree_var_value_t *V = 0;
  FUNC4 (c->left, L, &V);
  FUNC4 (c->right, R, &V);
  V = FUNC17 (V);

  int i;
  FUNC10 ();
  for (i = 1; i < T->nc; i++) {
    FUNC1 (X);
    FUNC1 (Z);
    X = FUNC14 (T->c[i], 0);
    struct tl_combinator_tree *K = 0;
    if (!(Z = FUNC3 (L, &K, X))) {    
      TL_FAIL;
    }
    L = Z;
    if (!K) {
      FUNC0 ("Partial app: not enougth variables (i = %d)\n", i);
      TL_FAIL;
    }
    if (!(Z = FUNC3 (R, &K, X))) {
      TL_FAIL;
    }
    FUNC2 (Z == R);
    FUNC9 (X, 1);
  }

  static char _buf[100000];
  FUNC5 (_buf, 100000, "%s%.*s", c->id, buf_pos, buf);
//  fprintf (stderr, "Local id: %s\n", _buf);

  struct tl_constructor *r = !fun ? FUNC7 (c->type, _buf, FUNC6 (_buf), 1) : FUNC8 (c->type, _buf, FUNC6 (_buf), 1);
  r->left = L;
  r->right = R;
  FUNC5 (_buf, 100000, "%s", c->id);
  r->real_id = FUNC18 (_buf);
  if (!r->name) {
    FUNC11 (r);
  }
  FUNC15 (r);
  return 1;
}