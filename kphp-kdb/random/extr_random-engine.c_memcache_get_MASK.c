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
 int VALUE_BUFFSIZE ; 
 int FUNC0 (char const*,int) ; 
 int /*<<< orphan*/  get_queries ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct connection*) ; 
 int /*<<< orphan*/  FUNC4 (struct connection*,char const*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (char const*,char*,int*) ; 
 int /*<<< orphan*/  stats_buff ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*,int) ; 
 int /*<<< orphan*/  value_buff ; 

int FUNC7 (struct connection *c, const char *key, int key_len) {
  int n;
  int dog_len = FUNC0 (key, key_len);
  key += dog_len;
  key_len -= dog_len;

  if (key_len >= 6 && !FUNC6 (key, "random", 6) && FUNC5 (key + 6, "%d", &n) == 1 && n > 0 && n <= VALUE_BUFFSIZE) {
    get_queries++;
    int r = FUNC1 (value_buff, n);
    FUNC4 (c, key - dog_len, value_buff, r);
    return 0;
  }

  if (key_len >= 10 && !FUNC6 (key, "hex_random", 10) && FUNC5 (key + 10, "%d", &n) == 1 && n > 0 && n <= VALUE_BUFFSIZE) {
    get_queries++;
    int r = FUNC2 (value_buff, n);
    FUNC4 (c, key - dog_len, value_buff, r);
    return 0;
  }

  if (key_len >= 5 && !FUNC6 (key, "stats", 5)) {
    int stats_len = FUNC3 (c);
    FUNC4 (c, key - dog_len, stats_buff, stats_len);
    return 0;
  }

  return 0;
}