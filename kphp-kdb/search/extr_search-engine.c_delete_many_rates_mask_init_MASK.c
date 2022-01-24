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
 int MAX_RATES ; 
 char* allowed_deleted_by_rate ; 
 int delete_many_rates_mask ; 
 int FUNC0 (char const) ; 

__attribute__((used)) static void FUNC1 (void) {
  const char *s = allowed_deleted_by_rate;
  while (*s) {
    int i = FUNC0 (*s);
    if (i >= 0 && i < MAX_RATES) {
      delete_many_rates_mask |= 1 << i;
    }
    s++;
  }
}