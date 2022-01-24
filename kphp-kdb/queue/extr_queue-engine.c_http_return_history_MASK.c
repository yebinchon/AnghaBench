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
struct connection {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct connection*,char const*) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC2 (struct connection *c, const char *ans) {
  if (ans == NULL) {
    FUNC0 (stderr, "buffer overflow\n");
    return -500;
  }

  FUNC1 (c, ans);

  return 0;
}