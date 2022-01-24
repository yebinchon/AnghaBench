#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int place; } ;
typedef  TYPE_1__ place_t ;
typedef  int /*<<< orphan*/  notify_place_t ;

/* Variables and functions */
 scalar_t__ COMM_MODE ; 
 scalar_t__ NOTIFY_MODE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int,int,int,int) ; 
 scalar_t__ min_logevent_time ; 
 scalar_t__ now ; 
 int /*<<< orphan*/  tot_places ; 
 int /*<<< orphan*/  FUNC5 (int,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC7 (int type, int owner, int place) {
  if (now < min_logevent_time) {
    return 0;
  }
  if (!FUNC1 (type, owner, place)) {
    return -1;
  }
  place_t *V = FUNC4 (type, owner, place, -1);
  FUNC5 (2, "delete_place: V = %p\n", V);
  if (!V) {
    return 0;
  }

  FUNC0 (COMM_MODE || NOTIFY_MODE);
  if (COMM_MODE) {
    FUNC2 (V);
    V->place = -1;
    FUNC6 (V, sizeof (place_t));
  } else {
    FUNC3 ((notify_place_t *)V);
    V->place = -1;
    FUNC6 (V, sizeof (notify_place_t));
  }
  tot_places--;
  return 1;
}