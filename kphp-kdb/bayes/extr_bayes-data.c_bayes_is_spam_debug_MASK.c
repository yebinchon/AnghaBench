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
typedef  int /*<<< orphan*/  message ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int debug_on ; 
 char* ds ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 

int FUNC2 (message *msg, int random_tag, char *debug_s) {
  if (FUNC1 (msg, random_tag) < 0) {
    return -1;
  }

  debug_on = 1;
  ds = debug_s;

  FUNC0 (msg, random_tag);

  *ds = 0;
  debug_on = 0;

  return 0;
}