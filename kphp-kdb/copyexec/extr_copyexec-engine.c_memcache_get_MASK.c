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
 int FUNC0 (struct connection*) ; 
 int /*<<< orphan*/  FUNC1 (struct connection*,char const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stats_buffer ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,int) ; 

int FUNC3 (struct connection *c, const char *key, int key_len) {
  if (key_len >= 5 && !FUNC2 (key, "stats", 5)) {
    int stats_len = FUNC0 (c);
    FUNC1 (c, key, stats_buffer, stats_len);
    return 0;
  }
  return 0;
}