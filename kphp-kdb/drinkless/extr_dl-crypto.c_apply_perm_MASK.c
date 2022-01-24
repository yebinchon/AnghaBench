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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int*,int) ; 

void FUNC1 (char *s, int *perm, int n) {
  FUNC0 ("In apply_perm s = %p, perm = %p, n = %d\n", s, perm, n);
  int i;
  for (i = 0; i < n; i++) {
    int j = perm[i];
    char t = s[i];
    s[i] = s[j];
    s[j] = t;
  }
  FUNC0 ("After apply_perm s = %p, perm = %p, n = %d\n", s, perm, n);
}