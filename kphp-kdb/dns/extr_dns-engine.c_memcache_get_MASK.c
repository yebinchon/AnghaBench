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
 int FUNC1 (char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,int) ; 
 int FUNC3 (struct connection*,char const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stats_buff ; 

int FUNC4 (struct connection *c, const char *key, int key_len) {
  int dog_len = FUNC1 (key, key_len);
  key += dog_len;
  key_len -= dog_len;
  if (key_len >= 5 && !FUNC2 (key, "stats", 5)) {
    int len = FUNC0 (c);
    return FUNC3 (c, key - dog_len, stats_buff, len);
  }
  return 0;
}