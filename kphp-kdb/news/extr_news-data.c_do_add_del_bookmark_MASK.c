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
 int /*<<< orphan*/  FUNC0 (long long,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (long long,int,int,int) ; 
 int FUNC2 (int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,long long,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int,int,int) ; 

int FUNC7 (int user_id, int type, int owner, int place, int y) {
  //fprintf (stderr, "%d (%d, %d) - (%d, %d) %d\n", type, owner, place, log_split_min, log_split_mod, user_id);
  if (!FUNC4 (type, owner, place) || user_id <= 0) {
    return 0;
  }
  long long t;
  FUNC0 (t, type, owner, place);
  int x, yy, z;
  FUNC1 (t, x, yy, z);
  //fprintf (stderr, "%x(%x) %x(%x) %x(%x) %llx\n", type, x, owner, yy, place, z, t);
  FUNC3 (x == type && yy == owner && z == place);
  if (!FUNC5 (user_id, t, y, 0)) {
    FUNC6 (user_id, type, owner, place, y);
    return FUNC2 (user_id, type, owner, place, y);
  }
  return 1;
}