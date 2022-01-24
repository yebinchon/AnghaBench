#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ type; } ;
typedef  TYPE_1__ token ;
struct TYPE_11__ {TYPE_1__ tok; } ;
typedef  TYPE_2__ node ;

/* Variables and functions */
 int /*<<< orphan*/  FAIL ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  OK ; 
 TYPE_1__* FUNC2 (int) ; 
 TYPE_2__** FUNC3 (int) ; 
 scalar_t__ end_token ; 
 TYPE_2__* FUNC4 () ; 
 scalar_t__ op_lb ; 
 size_t op_rb ; 
 int /*<<< orphan*/ * priority ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__**,TYPE_1__*,int*,int*,int /*<<< orphan*/ ) ; 

node *FUNC6 (token *v) {
  if (v == NULL) {
    return NULL;
  }

  token *t = v;
  while (t->type != end_token) {
    t++;
  }
  int n = t - v, i;

  int tsize = n;

  node **s1 = FUNC3 (tsize * sizeof (node *));
  token *s2 = FUNC2 (tsize * sizeof (token));
  int s1n = 0, s2n = 0;

#define FAIL for (i = 0; i < s1n; i++) { \
               del_node (s1[i]);         \
             }                           \
             OK;                         \
             return NULL

#define OK dl_free (s1, tsize * sizeof (node *));    \
           dl_free (s2, tsize * sizeof (token))

  for (i = 0; i < n; i++) {
    if (FUNC0(v[i].type)) { // op
      if (v[i].type == op_lb) {
        s2[s2n++] = v[i];
      } else {
        if (!FUNC1(v[i].type) && !FUNC5 (s1, s2, &s1n, &s2n, priority[v[i].type])) {
          FAIL;
        }
        if (v[i].type == op_rb) {
          if (!s2n || s2[s2n - 1].type != op_lb) {
            FAIL;
          }
          s2n--;
        } else {
          s2[s2n++] = v[i];
        }
      }
    } else {
      s1[s1n] = FUNC4();
      s1[s1n++]->tok = v[i];
    }
  }
  if (!FUNC5 (s1, s2, &s1n, &s2n, priority[op_rb]) || s1n != 1 || s2n) {
    FAIL;
  }
  node *res = s1[0];
  OK;

#undef FAIL
#undef OK
  return res;
}