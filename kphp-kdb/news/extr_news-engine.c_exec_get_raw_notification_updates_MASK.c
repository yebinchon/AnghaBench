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
 scalar_t__ R ; 
 scalar_t__ R_end ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC2 (int,int,int,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct connection*,char const*,int,int,int,scalar_t__,scalar_t__) ; 
 int FUNC4 (char const*,char*,int*,int*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 

__attribute__((used)) static int FUNC5 (struct connection *c, const char *key, int key_len, int dog_len) {
  int user_id;
  int mask = -1, st_time = 0, end_time = 0, x = 0, raw = 0;

  if (verbosity >= 2) {
    FUNC1 (stderr, "exec_get_raw_notifications (%d, %s, %d, %d)\n", c, key, key_len, dog_len);
  }

  if (*key == '%') {
    raw = 1;
  }

  if ((FUNC4 (key+raw, "raw_notification_updates%d[%d,%d]:%n%d", &mask, &st_time, &end_time, &x, &user_id) >= 4 ||
       FUNC4 (key+raw, "raw_notification_updates%n%d", &x, &user_id) >= 1) && x > 0) {
    if (verbosity >= 3) {
      FUNC1 (stderr, "mask = %d, st_time = %d, end_time = %d, x = %d, user_id = %d\n", mask, st_time, end_time, x, user_id);
    }
    x += raw;

    FUNC0 ();
    int res = FUNC2 (user_id, mask, st_time, end_time, 0);
    if (verbosity > 1) {
      FUNC1 (stderr, "prepare_raw_updates(%d) = %d\n", user_id, res);
    }
    if (res >= 0) {
      return FUNC3 (c, key-dog_len, dog_len + key_len, /*(R_end - R) / 9*/ 0x7fffffff, -raw, R, R_end - R);
    }
  }
  return 0;
}