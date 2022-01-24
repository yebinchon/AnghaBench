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

/* Variables and functions */
 scalar_t__ LEV_FR_DEL_CAT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

int FUNC4 (int user_id, int cat) {
  if (FUNC1 (user_id) < 0 || cat <= 0 || cat > 30) {
    return -1;
  }
  FUNC0 (LEV_FR_DEL_CAT+cat, 8, user_id);

  return FUNC2 (FUNC3 (user_id), cat, 1);
}