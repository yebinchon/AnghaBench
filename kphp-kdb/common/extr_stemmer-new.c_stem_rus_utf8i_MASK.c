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
 int FUNC0 (int) ; 
 int maxn ; 
 int FUNC1 (int,int) ; 
 int* stem_ts ; 

int FUNC2 (int *v, int use_dictionary) {
  int i;
  for (i = 0; v[i] && i + 100 < maxn; i++) {
    stem_ts[i] = FUNC0 (v[i]);
  }
  int l = FUNC1 (i, use_dictionary);
  for (i = 0; i < l; i++) {
    if (stem_ts[i] != 32) {
      v[i] = stem_ts[i] + 1072;
    }
  }
  v[l] = 0;
  return l;
}