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
struct TYPE_3__ {int priv_mask; } ;
typedef  TYPE_1__ user_t ;

/* Variables and functions */
 int /*<<< orphan*/  UG_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int,int) ; 

__attribute__((used)) static int FUNC2 (int user_id, int mask) {
  FUNC0 (UG_MODE);
  user_t *U = FUNC1 (user_id, 1);
  if (!U) {
    return -1;
  }
  U->priv_mask = mask | 1;
  return 1;
}