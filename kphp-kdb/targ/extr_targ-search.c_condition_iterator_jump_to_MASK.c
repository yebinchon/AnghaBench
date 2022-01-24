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
struct condition_iterator {int /*<<< orphan*/  Cond; } ;
typedef  TYPE_1__* iterator_t ;
typedef  int /*<<< orphan*/  condition_t ;
struct TYPE_3__ {int pos; int /*<<< orphan*/  jump_to; } ;

/* Variables and functions */
 int INFTY ; 
 int /*<<< orphan*/ * User ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  empty_iterator_jump_to ; 
 int max_uid ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC2 (iterator_t I, int req_pos) {
  FUNC0 (req_pos > I->pos);
  condition_t Cond = ((struct condition_iterator *) I)->Cond;
  while (req_pos <= max_uid && (!User[req_pos] || !FUNC1 (User[req_pos], Cond, req_pos))) {
    ++req_pos;
  }
  if (req_pos > max_uid) {
    I->jump_to = empty_iterator_jump_to;
    return I->pos = INFTY;
  }
  return I->pos = req_pos;
}