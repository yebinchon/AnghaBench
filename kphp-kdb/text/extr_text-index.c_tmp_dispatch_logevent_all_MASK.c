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
 int passes ; 
 int /*<<< orphan*/ * temp_file ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void const*,int) ; 

int FUNC1 (const void *L, int size) {
  int i;
  for (i = 0; i < passes; i++) {
    FUNC0 (&temp_file[i], L, size);
  }
  return passes;
}