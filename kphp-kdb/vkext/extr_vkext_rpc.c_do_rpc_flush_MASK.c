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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,double) ; 
 int last_server_fd ; 
 int /*<<< orphan*/ * servers ; 

int FUNC1 (double timeout) { /* {{{ */
  int i;
  int bad = 0;
  for (i = 0; i < last_server_fd; i++) {
    if (FUNC0 (servers[i], timeout) < 0) {
      bad ++;
    }
  }
  return -bad;
}