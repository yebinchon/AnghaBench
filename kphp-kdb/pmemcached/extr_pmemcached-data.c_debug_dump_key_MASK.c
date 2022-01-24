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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC2 (const char *key, int key_len) {
  int i;
  if (key_len < 0) { FUNC0 (stderr, "[len = %d]", key_len); }
  for (i = 0; i < key_len; i++) FUNC1 (key[i], stderr);
  FUNC1 ('\n', stderr);
}