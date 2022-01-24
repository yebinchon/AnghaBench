#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_2__* first; } ;
typedef  TYPE_1__ place_t ;
struct TYPE_5__ {int item; int date; struct TYPE_5__* next; } ;
typedef  TYPE_2__ comment_t ;

/* Variables and functions */
 int /*<<< orphan*/  COMM_MODE ; 
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 TYPE_1__* FUNC1 (int,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ min_logevent_time ; 
 scalar_t__ now ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3 (int type, int owner, int place, int item, int shown) {
  if (now < min_logevent_time) {
    return 0;
  }
  if (!FUNC0 (type, owner, place) || !COMM_MODE || !FUNC2 (type)) {
    return -1;
  }

  place_t *V = FUNC1 (type, owner, place, 0);
  if (!V) {
    return 0;
  }

  comment_t *p;
  int res = 0;
  for (p = V->first; p != (comment_t *) V; p = p->next) {
    if (p->item == item && (p->date ^ shown) >= 0) {
      res++;
      p->date ^= (-1 << 31);
    }
  }

  return res;
}