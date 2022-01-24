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
struct TYPE_3__ {int /*<<< orphan*/  pr_tree; } ;
typedef  TYPE_1__ user_t ;
typedef  int /*<<< orphan*/  privacy_key_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2 (user_t *U, privacy_key_t key) {
  if (!U || !key) {
    return -1;
  }
  if (FUNC1 (U->pr_tree, key)) {
    U->pr_tree = FUNC0 (U->pr_tree, key);
    return 1;
  } else {
    return 0;
  }
}