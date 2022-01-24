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
 int FUNC1 (int) ; 
 int last_letter ; 
 int* stem_ts ; 

int FUNC2 (int *v) {
  int n;
  for (n = 0; v[n]; n++) {
    stem_ts[n] = FUNC0 (v[n]);
  }
  stem_ts[n] = -1;

  int len2 = FUNC1 (n);
  if (last_letter && len2 > 0) {
    v[len2 - 1] = last_letter;
  }
  v[len2] = 0;
  return len2;
}