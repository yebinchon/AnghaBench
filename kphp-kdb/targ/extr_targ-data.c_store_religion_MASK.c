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
struct lev_religion {char* str; int type; int /*<<< orphan*/  user_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  q_religion ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8 (struct lev_religion *E, int sz) {
  char *ptr = E->str;
  int len = E->type & 0xff;
  user_t *U;

  if (sz < len+9) { return -2; }

  FUNC1 (!ptr[len]);
//  fprintf (stderr, "%d: '%s'\n", E->user_id, E->str);

  U = FUNC6 (E->user_id);

  if (U) {
    FUNC4 (U->religion);
    U->religion = FUNC3 (len);
    FUNC5 (U->religion, ptr, len);
    FUNC2 (U->uid, U->religion_hashes);
    U->religion_hashes = FUNC7 (U->religion, 0, q_religion);
    FUNC0 (U->uid, U->religion_hashes);
  }

  return 9+len;
}