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
struct school {int /*<<< orphan*/  spec; int /*<<< orphan*/  sch_type; int /*<<< orphan*/  sch_class; int /*<<< orphan*/  country; int /*<<< orphan*/  grad; int /*<<< orphan*/  finish; int /*<<< orphan*/  start; int /*<<< orphan*/  school; int /*<<< orphan*/  city; } ;
struct lev_school {scalar_t__* spec; int /*<<< orphan*/  sch_type; int /*<<< orphan*/  sch_class; int /*<<< orphan*/  country; int /*<<< orphan*/  grad; int /*<<< orphan*/  finish; int /*<<< orphan*/  start; int /*<<< orphan*/  school; int /*<<< orphan*/  city; } ;

/* Variables and functions */
 scalar_t__ LEV_TARG_SCH_ADD ; 
 struct lev_school* FUNC0 (scalar_t__,int,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct lev_school*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5 (int user_id, struct school *S) {
  int len = S->spec ? FUNC4 (S->spec) : 0;
  if (len >= 256 || FUNC1 (user_id) < 0) {
    return 0;
  }
  struct lev_school *E = FUNC0 (LEV_TARG_SCH_ADD + len, 26 + len, user_id);
  E->city = S->city;
  E->school = S->school;
  E->start = S->start;
  E->finish = S->finish;
  E->grad = S->grad;
  E->country = S->country;
  E->sch_class = S->sch_class;
  E->sch_type = S->sch_type;
  if (len) {
    FUNC2 (E->spec, S->spec, len);
  }
  E->spec[len] = 0;
  FUNC3 (E, 26+len);
  return 1;
}