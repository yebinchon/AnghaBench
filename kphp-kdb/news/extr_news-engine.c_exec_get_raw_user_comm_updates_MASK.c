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
 int MAX_QUERY ; 
 int* Q ; 
 int QL ; 
 scalar_t__ R ; 
 scalar_t__ R_end ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int bookmarks_size ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int,...) ; 
 int FUNC3 (int,int,int*,int) ; 
 int FUNC4 (int,int,int,int,int) ; 
 int FUNC5 (struct connection*,char const*,int,int,int,scalar_t__,scalar_t__) ; 
 int FUNC6 (char const*,char*,int*,int*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC7 (char const*,char**,int) ; 
 int verbosity ; 

__attribute__((used)) static int FUNC8 (struct connection *c, const char *key, int key_len, int dog_len) {
  int user_id;
  int st_time = 0, end_time = 0, x = 0, raw = 0, mask = 0xffffffff;
  char *ptr;


  if (*key == '%') {
    raw = 1;
  }

  if ((FUNC6 (key+raw, "raw_user_comm_updates[%d,%d]:%n", &st_time, &end_time, &x) >= 2 ||
       FUNC6 (key+raw, "raw_user_comm_updates%n%d", &x, &user_id) >= 1) && x > 0) {
    x += raw;
    ptr = 0;
    user_id = FUNC7 (key+x, &ptr, 10);
    if (ptr < key + key_len && *ptr == ',') {
      ptr ++;
      mask = FUNC7 (ptr, &ptr, 10);
    }

    QL = FUNC3 (user_id, mask, Q, MAX_QUERY / 3);
    if (verbosity >= 2) {
      FUNC2 (stderr, "QL = %d, bookmarks_size = %d\n", QL, bookmarks_size);
    }
    if (QL < 0) {
      return -2;
    }

    FUNC1 ();
    int i, best = 0;
    QL *= 3;
    FUNC0 (QL <= MAX_QUERY);
    for (i = 0; i < QL; i += 3) {
      int res = FUNC4 (Q[i], Q[i+1], Q[i+2], st_time, end_time);
      if (verbosity > 2) {
        FUNC2 (stderr, "prepare_raw_comm_updates(%d_%d_%d) = %d\n", Q[i], Q[i+1], Q[i+2], res);
      }
      if (res > best) {
        best = res;
      }
    }
    if (best >= 0) {
      return FUNC5 (c, key - dog_len, key_len + dog_len, /*(R_end - R) / 9*/ 0x7fffffff, -raw, R, R_end - R);
    }
  }
  return 0;
}