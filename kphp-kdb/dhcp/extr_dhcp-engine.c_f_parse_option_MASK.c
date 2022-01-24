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
 int /*<<< orphan*/  DEBUG_FILEDUMP ; 
 int /*<<< orphan*/  DEBUG_UDPDUMP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  debug_mode ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char,int) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC2 (int val) {
  switch (val) {
  case 'F':
    FUNC0 (!debug_mode);
    debug_mode = DEBUG_FILEDUMP;
    break;
  case 'U':
    FUNC0 (!debug_mode);
    debug_mode = DEBUG_UDPDUMP;
    break;
  default:
    FUNC1 (stderr, "Unimplemented option '%c' (%d)\n", (char) val, val);
    return -1;
  }
  return 0;
}