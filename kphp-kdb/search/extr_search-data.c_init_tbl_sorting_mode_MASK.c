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
 int FLAG_REVERSE_SEARCH ; 
 int MAX_RATES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* rate_first_characters ; 
 scalar_t__ FUNC1 (char*,char) ; 
 int* tbl_sorting_mode ; 

void FUNC2 () {
  const char *p = rate_first_characters;
  int i;
  for (i = 0; i < 128; i++) {
    tbl_sorting_mode[i] = -1;
  }

  FUNC0 (FUNC1(rate_first_characters, 'i') == 0);
  tbl_sorting_mode['i'] = MAX_RATES;
  tbl_sorting_mode['I'] = MAX_RATES | FLAG_REVERSE_SEARCH;
  i = 0;
  while (*p) {
    FUNC0 ('a' <= *p && *p <= 'z');
    tbl_sorting_mode[(int) *p] = i;
    tbl_sorting_mode[(int) (*p - 32)] = i | FLAG_REVERSE_SEARCH;
    i++;
    p++;
  }
}