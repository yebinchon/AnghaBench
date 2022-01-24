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
 int FUNC1 (int,int*) ; 
 int FUNC2 (unsigned char*,int*) ; 
 int* stem_ts ; 

int FUNC3 (const char *s, int *delete_penultimate_letter) {
  int i, n = FUNC2 ((unsigned char *)s, stem_ts);
  for (i = 0; i < n; i++) {
    stem_ts[i] = FUNC0 (stem_ts[i]);
  }
  stem_ts[n] = -1;
  return FUNC1 (n, delete_penultimate_letter);
}