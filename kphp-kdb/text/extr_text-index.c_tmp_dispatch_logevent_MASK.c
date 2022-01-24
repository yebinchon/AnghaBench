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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int* pass_min_uid ; 
 int passes ; 
 int /*<<< orphan*/ * temp_file ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void const*,int) ; 

int FUNC3 (const void *L, int size) {
  FUNC0 (size >= 8);
  int user_id = ((int *) L)[1];
  int uid = FUNC1 (user_id);
  if (uid < 0) {
    return 0;
  }
  int a = -1, b = passes, c;
  while (b - a > 1) {
    c = ((a + b) >> 1);
    if (pass_min_uid[c] <= uid) {
      a = c;
    } else {
      b = c;
    }
  }
  FUNC0 (a >= 0 && uid < pass_min_uid[b]);
  FUNC2 (&temp_file[a], L, size);
  return 1;
}