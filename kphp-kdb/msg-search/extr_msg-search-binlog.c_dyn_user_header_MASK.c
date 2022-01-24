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
typedef  int /*<<< orphan*/  user_mod_header_t ;

/* Variables and functions */
 int PRIME ; 
 int /*<<< orphan*/ ** UserModHeaders ; 
 int* Users ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int u_cnt ; 

user_mod_header_t *FUNC3 (int user_id, int force) {
  int h = user_id % PRIME;
  int h1 = 1 + user_id % (PRIME - 1);
  user_mod_header_t *R;

  FUNC0 (user_id > 0);

  while (Users[h] && Users[h] != user_id) {
    h += h1;
    if (h >= PRIME) { 
      h -= PRIME; 
    }
  }
  if (Users[h] == user_id) {
    if (force < 0) {
      UserModHeaders[h] = 0;
    }
    return UserModHeaders[h];
  }
  if (force <= 0) {
    return 0;
  }

  R = FUNC1 (sizeof(user_mod_header_t), sizeof(int));
  if (!R) { 
    return 0;
  }
  FUNC2 (R, 0, sizeof(user_mod_header_t));

  FUNC0 (u_cnt <= 3*PRIME/4);
  ++u_cnt;

  Users[h] = user_id;
  UserModHeaders[h] = R;
  return R;
}