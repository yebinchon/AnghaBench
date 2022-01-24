#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct keep_mc_store {int user_id; int len; } ;
struct connection {TYPE_1__* Tmp; } ;
struct TYPE_3__ {scalar_t__ start; } ;

/* Variables and functions */
 int MAX_QUERY ; 
 int* Q ; 
 int QL ; 
 scalar_t__ R ; 
 scalar_t__ R_end ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC4 (int*,int,int,char const*,int) ; 
 int FUNC5 (int,int,int,int) ; 
 int FUNC6 (TYPE_1__*,int*,int) ; 
 int FUNC7 (struct connection*,char const*,int,int,int,scalar_t__,scalar_t__) ; 
 int FUNC8 (char const*,char*,int*,int*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 

__attribute__((used)) static int FUNC9 (struct connection *c, const char *key, int key_len, int dog_len) {
  int user_id;
  int mask = -1, st_time = 0, end_time = 0, x = 0, raw = 0;
  struct keep_mc_store *Data = 0;

  if (verbosity >= 2) {
    FUNC3 (stderr, "exec_get_raw_updates (%p, %s, %d, %d)\n", c, key, key_len, dog_len);
  }

  if (c->Tmp) {
    Data = (struct keep_mc_store *) c->Tmp->start;
  }

  if (*key == '%') {
    raw = 1;
  }

  if ((FUNC8 (key+raw, "raw_updates%d[%d,%d]:%n", &mask, &st_time, &end_time, &x) >= 3 ||
       FUNC8 (key+raw, "raw_updates%n%d", &x, &user_id) >= 1) && x > 0) {
    if (verbosity >= 3) {
      FUNC3 (stderr, "mask = %d, st_time = %d, end_time = %d, x = %d, user_id = %d\n", mask, st_time, end_time, x, user_id);
    }
    if (x == 11) { mask = -1; }
    x += raw;
    QL = FUNC4 (Q, MAX_QUERY, 1, key + x, key_len - x);
    if (verbosity >= 3) { FUNC3 (stderr, "QL = %d\n", QL); }
    if (QL == 1 && Q[0] < 0 && Data && Data->user_id == Q[0] && Data->len) {
      if (verbosity > 1) {
        FUNC3 (stderr, "found userlist %d, %d entries\n", Data->user_id, Data->len);
      }
      FUNC0 (c->Tmp, sizeof (struct keep_mc_store));
      QL = Data->len;
      if (QL > MAX_QUERY) { QL = MAX_QUERY; }
      x = FUNC6 (c->Tmp, Q, QL*4);
      FUNC1 (x == QL*4);
      if (verbosity > 1 && QL > 0) {
        FUNC3 (stderr, "first entry: %d\n", Q[0]);
      }
    }

    FUNC2 ();

    int i, best = -1;
    for (i = 0; i < QL; i++) {
      user_id = Q[i];
      int res = FUNC5 (user_id, mask, st_time, end_time);
      if (verbosity > 1) {
        FUNC3 (stderr, "prepare_raw_updates(%d) = %d\n", user_id, res);
      }
      if (res > best) {
        best = res;
      }
    }
    if (best >= 0) {
      return FUNC7 (c, key-dog_len, dog_len + key_len, /*(R_end - R) / 9*/ 0x7fffffff, -raw, R, R_end - R);
    }
  }
  return 0;
}