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
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 scalar_t__ now ; 
 char* now_date_string ; 
 scalar_t__ now_date_utime ; 

char *FUNC1 (void) {
  if (now_date_utime != now) {
    FUNC0 (now_date_string, now_date_utime = now);
  }
  return now_date_string;
}