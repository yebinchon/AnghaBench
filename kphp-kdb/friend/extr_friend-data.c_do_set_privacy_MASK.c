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
typedef  int /*<<< orphan*/  user_t ;
struct lev_set_privacy_long {int len; int /*<<< orphan*/  List; void* key; } ;
struct lev_set_privacy {int /*<<< orphan*/  List; void* key; } ;
typedef  void* privacy_key_t ;

/* Variables and functions */
 scalar_t__ LEV_FR_SET_PRIVACY ; 
 scalar_t__ LEV_FR_SET_PRIVACY_LONG ; 
 int /*<<< orphan*/  Q ; 
 int QL ; 
 void* FUNC0 (scalar_t__,int,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (char const*,int,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,void*,int) ; 

int FUNC8 (int user_id, privacy_key_t privacy_key, const char *text, int len, int force) {
  user_t *U;

  if (FUNC1 (user_id) < 0 || !privacy_key) {
    return -1;
  }

  if (FUNC6 (text, len, user_id) < 0) {
    return -1;
  }

  FUNC5 ();

  if (QL < 256) {
    struct lev_set_privacy *E = FUNC0 (LEV_FR_SET_PRIVACY + QL + (force ? 0x100 : 0), 16+QL*4, user_id);
    E->key = privacy_key;
    FUNC4 (E->List, Q, QL*4);
  } else {
    struct lev_set_privacy_long *E = FUNC0 (LEV_FR_SET_PRIVACY_LONG + (force ? 1 : 0), 20+QL*4, user_id);
    E->key = privacy_key;
    E->len = QL;
    FUNC4 (E->List, Q, QL*4);
  }

  if (!force) {
    U = FUNC2 (user_id);
  } else {
    U = FUNC3 (user_id);
  }

  return FUNC7 (U, privacy_key, force);
}