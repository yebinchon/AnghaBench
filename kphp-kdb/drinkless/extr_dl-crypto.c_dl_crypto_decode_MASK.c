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
struct TYPE_3__ {int val_n; int rand_n; unsigned int hash_st; unsigned int hash_mul; int /*<<< orphan*/  perm_first; int /*<<< orphan*/  perm_middle; int /*<<< orphan*/  perm_last; } ;
typedef  TYPE_1__ dl_crypto ;

/* Variables and functions */
 char N ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

void FUNC3 (dl_crypto *cr, char *s, char *t) {
  int n = cr->val_n + cr->rand_n;
  FUNC2 (s, n);
  FUNC0 (s, cr->perm_last, n);

  int i;
  unsigned int h = 0;
  for (i = 0; i < n; i++) {
    s[i] = (char)((s[i] + h) % N);
    h += s[i];
  }

  FUNC0 (s, cr->perm_middle, n);

  h = cr->hash_st;
  for (i = 0; i < cr->rand_n; i++) {
    h = h * cr->hash_mul + s[i];
  }

  for (i = 0; i < cr->val_n; i++) {
    t[i] = (char)((s[i + cr->rand_n] + N + h % N) % N);
    h = h * cr->hash_mul + t[i];
  }

  FUNC0 (t, cr->perm_first, cr->val_n);
  FUNC1 (t, cr->val_n);
}