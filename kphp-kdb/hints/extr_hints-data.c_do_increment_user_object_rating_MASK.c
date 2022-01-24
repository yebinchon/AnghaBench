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
struct lev_hints_increment_user_object_rating_char {int user_id; long long object_id; } ;
struct lev_hints_increment_user_object_rating {int user_id; long long object_id; int cnt; } ;

/* Variables and functions */
 scalar_t__ LEV_HINTS_INCREMENT_USER_OBJECT_RATING ; 
 scalar_t__ LEV_HINTS_INCREMENT_USER_OBJECT_RATING_CHAR ; 
 void* FUNC0 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC1 (long long) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  fading ; 
 int FUNC5 (struct lev_hints_increment_user_object_rating*) ; 
 int FUNC6 (struct lev_hints_increment_user_object_rating_char*) ; 

int FUNC7 (int user_id, int object_type, long long object_id, int cnt, int num) {
  if (!fading) {
    cnt += 128;
  }
  if (!FUNC2 (cnt) || !FUNC4 (object_type) || !FUNC3 (num) || !FUNC1 (object_id)) {
    return 0;
  }

  if (cnt & -0x100) {
    struct lev_hints_increment_user_object_rating *E =
      FUNC0 (LEV_HINTS_INCREMENT_USER_OBJECT_RATING + object_type + (num << 8), sizeof (struct lev_hints_increment_user_object_rating), user_id);

    E->user_id = user_id;
    E->object_id = object_id;
    E->cnt = cnt;

    return FUNC5 (E);
  } else {
    struct lev_hints_increment_user_object_rating_char *E =
      FUNC0 (LEV_HINTS_INCREMENT_USER_OBJECT_RATING_CHAR + object_type + (cnt << 8) + (num << 16), sizeof (struct lev_hints_increment_user_object_rating_char), user_id);

    E->user_id = user_id;
    E->object_id = object_id;

    return FUNC6 (E);
  }
}