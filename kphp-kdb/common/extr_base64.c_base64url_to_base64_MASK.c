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

int FUNC1 (const char *const input, char *output, int olen) {
  int i = 0;
  while (input[i] && i < olen) {
    if (input[i] == '-') {
      output[i] = '+';
    } else if (input[i] == '_') {
      output[i] = '/';
    } else {
      output[i] = input[i];
    }
    i++;
  }
  if (((i + 3) & -4) >= olen) {    
    return -1;
  }
  while (i & 3) {
    output[i++] = '=';
  }
  output[i] = 0;
  FUNC0 (i < olen);
  return 0;
}