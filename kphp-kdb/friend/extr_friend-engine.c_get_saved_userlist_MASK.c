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
struct keep_mc_header {int num; int list_id; } ;
struct connection {TYPE_1__* Tmp; } ;
struct TYPE_3__ {scalar_t__ start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  userlist ; 

int FUNC3 (struct connection *c, int list_id) {
  if (!c->Tmp) {
    return -1;
  }
  struct keep_mc_header *D = (struct keep_mc_header *) c->Tmp->start;
  FUNC0 (c->Tmp, sizeof (struct keep_mc_header));
  int res = D->num;
  FUNC1 (FUNC2 (c->Tmp, userlist, res * 4) == 4 * res);
  if (D->list_id != list_id) {
    return -1;
  }
  return res;
}