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
 scalar_t__ STATS_BUFF_SIZE ; 
 int FUNC0 (scalar_t__,int) ; 
 int FUNC1 (struct connection*,scalar_t__,scalar_t__) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct connection*,char const*,scalar_t__,int) ; 
 scalar_t__ stats_buff ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*,int) ; 

int FUNC5 (struct connection *c, const char *key, int key_len) {
  if (key_len >= 5 && !FUNC4 (key, "stats", 5)) {
    int len = FUNC2 ();
    int len2 = FUNC1 (c, stats_buff + len, STATS_BUFF_SIZE - len);
    FUNC3 (c, key, stats_buff, len + len2);
    return 0;
  }
  if (key_len >= 13 && !FUNC4 (key, "slaves_broken", 13)) {
    FUNC3 (c, key, stats_buff, FUNC0 (stats_buff, 1));
    return 0;
  }
  if (key_len >= 14 && !FUNC4 (key, "slaves_notconn", 14)) {
    FUNC3 (c, key, stats_buff, FUNC0 (stats_buff, 2));
    return 0;
  }
  if (key_len >= 11 && !FUNC4 (key, "slaves_late", 11)) {
    FUNC3 (c, key, stats_buff, FUNC0 (stats_buff, 4));
    return 0;
  }
  if (key_len >= 15 && !FUNC4 (key, "slaves_uptodate", 15)) {
    FUNC3 (c, key, stats_buff, FUNC0 (stats_buff, 8));
    return 0;
  }
  if (key_len >= 10 && !FUNC4 (key, "slaves_all", 10)) {
    FUNC3 (c, key, stats_buff, FUNC0 (stats_buff, -1));
    return 0;
  }
  if (key_len >= 10 && !FUNC4 (key, "slaves_bad", 10)) {
    FUNC3 (c, key, stats_buff, FUNC0 (stats_buff, ~24));
    return 0;
  }
  return 0;
}