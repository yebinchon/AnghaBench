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
struct connection {int /*<<< orphan*/  Out; } ;

/* Variables and functions */
 int MAX_RATES ; 
 int FUNC0 (long long,long long) ; 
 int FUNC1 (long long,long long) ; 
 int FUNC2 (long long,int,long long) ; 
 int /*<<< orphan*/  FUNC3 (int*,long long,int) ; 
 int FUNC4 (char const) ; 
 int FUNC5 (char*,char*,int) ; 
 int FUNC6 (char const*,char*,int*,...) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,long long,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static int FUNC9 (struct connection *c, const char *key, int len, long long drate) {
  int rate;
  long long item_id = 0;
  int owner_id, short_id, op = 0, res;
  static char value[32];
  int p = FUNC4 (*key);

  FUNC7 (4, "p = %d, *key=%c\n", p, *key);

  if (p >= 0 && p < MAX_RATES) {
    if (FUNC6 (key+1, "ate%d_%d", &owner_id, &short_id) == 2) {
      if (owner_id && short_id > 0) {
        item_id = (((long long) short_id) << 32) + (unsigned) owner_id;
        op = p+1;
      }
    } else if (FUNC6 (key+1, "ate%d", &short_id) == 1) {
      if (short_id > 0) {
        item_id = short_id;
        op = p+1;
      }
    }
  }

  FUNC7 (3, "incr: item_id=%lld\n", (long long)item_id);

  if (op > 0) {
    switch(op) {
      case 1:
        res = FUNC0(item_id, drate);
        break;
      case 2:
        res = FUNC1(item_id, drate);
        break;
      default:
        res = FUNC2 (item_id, p, drate);
        break;
    }
    if (res) {
      if (!FUNC3 (&rate, item_id, p)) {
        return -1;
      }
      FUNC8 (&c->Out, value, FUNC5 (value, "%d\r\n", rate));
      return 0;
    }
  }

  FUNC8 (&c->Out, "NOT_FOUND\r\n", 11);
  return 0;
}