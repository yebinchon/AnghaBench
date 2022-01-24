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
struct TYPE_3__ {int /*<<< orphan*/  religion_hashes; int /*<<< orphan*/  uid; int /*<<< orphan*/  religion; } ;
typedef  TYPE_1__ user_t ;
struct lev_religion {int /*<<< orphan*/  str; int /*<<< orphan*/  user_id; } ;

/* Variables and functions */
 scalar_t__ LEV_TARG_RELIGION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct lev_religion* FUNC1 (scalar_t__,int,int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,int) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  q_religion ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC9 (int user_id, const char *text, int len) {
  if (len < 0 || len >= 256 || FUNC2 (user_id) < 0) {
    return 0;
  }
  struct lev_religion *E = FUNC1 (LEV_TARG_RELIGION + len, 9+len, user_id);

  FUNC6 (E->str, text, len);

  user_t *U = FUNC7 (E->user_id);

  if (U) {
    FUNC5 (U->religion);
    U->religion = FUNC4 (E->str, len);
    FUNC3 (U->uid, U->religion_hashes);
    U->religion_hashes = FUNC8 (U->religion, 0, q_religion);
    FUNC0 (U->uid, U->religion_hashes);
    return 1;
  }

  return 0;
}