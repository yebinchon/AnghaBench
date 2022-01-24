#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int user_id; } ;
typedef  TYPE_1__ user_t ;
typedef  int /*<<< orphan*/  recommend_user_t ;
typedef  int /*<<< orphan*/  notify_user_t ;

/* Variables and functions */
 scalar_t__ NOTIFY_MODE ; 
 int RECOMMEND_MODE ; 
 scalar_t__ UG_MODE ; 
 TYPE_1__** User ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  tot_users ; 

__attribute__((used)) static int FUNC5 (int i) {
  if (i < 0) {
    return -1;
  }
  user_t *U = User[i];
  if (!U) {
    return 0;
  }
  User[i] = 0;

  U->user_id = -1;

  FUNC0 (UG_MODE || NOTIFY_MODE || RECOMMEND_MODE);
  if (UG_MODE) {
    FUNC1 (U);
  } else if (NOTIFY_MODE) {
    FUNC2 ((notify_user_t *) U);
  } else {
    FUNC0 (RECOMMEND_MODE);
    FUNC3 ((recommend_user_t *) U);
  }

  FUNC4 (U);
  tot_users--;
  return 1;
}