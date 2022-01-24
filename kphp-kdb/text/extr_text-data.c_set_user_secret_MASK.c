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
struct TYPE_3__ {int /*<<< orphan*/  secret; } ;
typedef  TYPE_1__ user_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (char const*) ; 

int FUNC4 (int user_id, const char *secret) {
  user_t *U = FUNC0 (user_id);
  if (!U) {
    return 0;
  }

  if (!secret) {
    FUNC2 (U->secret, 0, 8);
    return 1;
  }

  if (FUNC3 (secret) != 8) {
    return 0;
  }

  FUNC1 (U->secret, secret, 8);
  return 8;
}