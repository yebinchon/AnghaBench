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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC1 (int sec) {
  if (sec < 60) {
    FUNC0 (stderr, "%d", sec);
  } else if (sec < 3600) {
    int minutes = sec / 60;
    FUNC0 (stderr, "%dm", minutes);
      FUNC0 (stderr, "%ds", sec % 60);
  } else if (sec < 86400) {
    int hours = sec / 3600;
    FUNC0 (stderr, "%dh", hours);
      FUNC0 (stderr, "%dm", (sec % 3600) / 60);
  } else if (sec < 31536000) {
    int days = sec / 86400;
    FUNC0 (stderr, "%dd", days);
      FUNC0 (stderr, "%dh", (sec % 86400) / 3600);
  } else {
    FUNC0 (stderr, ">year");
  }
}