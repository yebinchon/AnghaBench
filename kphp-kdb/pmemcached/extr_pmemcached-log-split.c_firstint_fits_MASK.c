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
 unsigned long long copy_mod ; 
 unsigned long long copy_rem ; 
 unsigned long long FUNC0 (char const* const,int,int /*<<< orphan*/ *) ; 

int FUNC1 (const char *const key, int key_len) {
  unsigned long long id = FUNC0 (key, key_len, NULL);
  return id % copy_mod == copy_rem;
}