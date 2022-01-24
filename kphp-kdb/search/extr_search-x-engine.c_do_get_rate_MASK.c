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
 int MAX_RATES ; 
 scalar_t__ FUNC0 (int*,long long) ; 
 scalar_t__ FUNC1 (int*,long long,int) ; 
 int FUNC2 (char const) ; 
 int FUNC3 (struct connection*,char const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int,...) ; 
 int FUNC5 (char const*,char*,int*,...) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int,char const) ; 

__attribute__((used)) static int FUNC7 (struct connection *c, const char *key, int len, int dog_len) {
  int rates[2];
  long long item_id = 0;
  int owner_id, short_id, op = 0;
  static char value[32];

  if (FUNC5 (key+1, "ate%d_%d ", &owner_id, &short_id) == 2) {
    if (owner_id && short_id > 0) {
      item_id = (((long long) short_id) << 32) + (unsigned) owner_id;
      op = 1;
    }
  } else if (FUNC5 (key+1, "ate%d ", &short_id) == 1) {
    if (short_id > 0) {
      item_id = short_id;
      op = 1;
    }
  }

  if (op) {
    int p = FUNC2 (*key);

    FUNC6 (4, "p = %d, *key = %c\n", p, *key);

    if (p >= 0 && p < MAX_RATES) {
      if (FUNC1 (rates, item_id, p)) {
        return FUNC3 (c, key - dog_len, value, FUNC4 (value, "%d", rates[0]));
      }
    }
    op = 0;
  }

  if (FUNC5 (key, "rates%d_%d ", &owner_id, &short_id) == 2) {
    if (owner_id && short_id > 0) {
      item_id = (((long long) short_id) << 32) + (unsigned) owner_id;
      op = 1;
    }
  } else if (FUNC5 (key, "rates%d ", &short_id) == 1) {
    if (short_id > 0) {
      item_id = short_id;
      op = 1;
    }
  }

  if (op && FUNC0 (rates, item_id)) {
    return FUNC3 (c, key - dog_len, value, FUNC4 (value, "%d,%d", rates[0], rates[1]));
  }

  return 0;
}