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
 int FUNC0 (char const) ; 
 int FUNC1 (int,int*) ; 
 int* stem_ts ; 

int FUNC2 (const char *s, int len, int *delete_penultimate_letter) {
  int n;
  for (n = 0; n < len && s[n]; n++) {
    stem_ts[n] = FUNC0 (s[n]);
  }
  stem_ts[n] = -1;
  return FUNC1 (n, delete_penultimate_letter);
}