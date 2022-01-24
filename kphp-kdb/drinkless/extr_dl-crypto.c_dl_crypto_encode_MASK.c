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
struct TYPE_3__ {int val_n; unsigned int hash_st; int rand_n; unsigned int hash_mul; int /*<<< orphan*/  perm_last; int /*<<< orphan*/  perm_middle; int /*<<< orphan*/  perm_first; } ;
typedef  TYPE_1__ dl_crypto ;

/* Variables and functions */
 unsigned int N ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 scalar_t__ FUNC3 () ; 

void FUNC4 (dl_crypto *cr, char *s, char *t) {
  FUNC2 (s, cr->val_n);
  FUNC0 (s, cr->perm_first, cr->val_n);

  int i;
  unsigned int h = cr->hash_st;
  for (i = 0; i < cr->rand_n; i++) {
    t[i] = (char)((unsigned int)FUNC3() % N);
    h = h * cr->hash_mul + t[i];
  }

  for (i = 0; i < cr->val_n; i++) {
    t[i + cr->rand_n] = (char)((s[i] + N - h % N) % N);
    h = h * cr->hash_mul + s[i];
  }

  int n = cr->val_n + cr->rand_n;

  FUNC0 (t, cr->perm_middle, n);

  h = 0;
  for (i = 0; i < n; i++) {
    char c = t[i];
    t[i] = (char)((t[i] + N - h % N) % N);
    h += c;
  }
  
  FUNC0 (t, cr->perm_last, n);
  FUNC1 (t, n);
}