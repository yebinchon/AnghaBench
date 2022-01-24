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
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,long long,int,int) ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 

int FUNC4 (int user_id, int type, int owner, int place, int y) {
  if (verbosity > 2) {
    FUNC2 (stderr, "add_del_bookmark: %d - %d - %d\n", type, owner, place);
  }
  if (!FUNC1 (type, owner, place) || user_id <= 0) {
    return 0;
  }
  long long t;
  FUNC0 (t, type, owner, place);
  FUNC3 (user_id, t, y, 1);
  return 1;
}