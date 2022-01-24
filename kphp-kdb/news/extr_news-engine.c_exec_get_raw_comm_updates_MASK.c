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
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int,...) ; 
 int FUNC4 (int*,int,int,char const*,int) ; 
 int FUNC5 (int,int,int,int,int) ; 
 int FUNC6 (TYPE_1__*,int*,int) ; 
 int FUNC7 (struct connection*,char const*,int,int,int,scalar_t__,scalar_t__) ; 
 int FUNC8 (char const*,char*,int*,int*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC9 (char const*,char**,int) ; 
 int verbosity ; 

__attribute__((used)) static int FUNC10 (struct connection *c, const char *key, int key_len, int dog_len) {
  int user_id;
  int st_time = 0, end_time = 0, x = 0, raw = 0;
  char *ptr;

  struct keep_mc_store *Data = 0;

  if (c->Tmp) {
    Data = (struct keep_mc_store *) c->Tmp->start;
  }

  if (*key == '%') {
    raw = 1;
  }

  if ((FUNC8 (key+raw, "raw_comm_updates[%d,%d]:%n", &st_time, &end_time, &x) >= 2 ||
       FUNC8 (key+raw, "raw_comm_updates%n%d", &x, &user_id) >= 1) && x > 0) {
    x += raw;
    ptr = 0;
    user_id = FUNC9 (key+x, &ptr, 10);


    if (user_id < 0 && ptr == key + key_len && Data && user_id == Data->user_id && Data->len) {
      if (verbosity > 1) {
        FUNC3 (stderr, "found userlist %d, %d entries\n", user_id, Data->len);
      }

      FUNC0 (c->Tmp, sizeof (struct keep_mc_store));
      QL = Data->len;
      if (QL > MAX_QUERY) { QL = MAX_QUERY; }
      x = FUNC6 (c->Tmp, Q, QL*12);
      FUNC1 (x == QL*12);
      if (verbosity > 1 && QL > 0) {
        FUNC3 (stderr, "first entry: %d_%d_%d\n", Q[0], Q[1], Q[2]);
      }
    } else {
      QL = FUNC4 (Q, MAX_QUERY, 3, key + x, key_len - x);
    }

    FUNC2 ();
    int i, best = -1;
    QL *= 3;
    for (i = 0; i < QL; i += 3) {
      int res = FUNC5 (Q[i], Q[i+1], Q[i+2], st_time, end_time);
      if (verbosity > 1) {
        FUNC3 (stderr, "prepare_raw_comm_updates(%d_%d_%d) = %d\n", Q[i], Q[i+1], Q[i+2], res);
      }
      if (res > best) {
        best = res;
      }
    }
    if (best >= 0) {
      return FUNC7 (c, key - dog_len, key_len + dog_len, /*(R_end - R) / 9*/ 0x7fffffff, -raw, R, R_end - R);
    }
  }
  return 0;
}