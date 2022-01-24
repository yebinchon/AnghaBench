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
 int FUNC0 (char) ; 
 char FUNC1 (int) ; 

void FUNC2 (char *str1, const char *str2, int digits) {
  int i;
  for (i = 0; i < digits; i++) {
    str1[i] = FUNC1 (FUNC0 (str1[i]) ^ FUNC0 (*str2++));
  }
}