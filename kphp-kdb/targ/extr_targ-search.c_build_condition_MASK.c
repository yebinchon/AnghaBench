#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct condition_basic {int dummy; } ;
struct TYPE_11__ {int flags; int type; int /*<<< orphan*/  value; struct TYPE_11__* left; struct TYPE_11__* right; } ;
typedef  TYPE_1__ query_t ;
typedef  TYPE_2__* condition_t ;
typedef  void* condition_func_t ;
struct TYPE_12__ {struct TYPE_12__* true_branch; struct TYPE_12__* false_branch; void* eval; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  address ; 
 int /*<<< orphan*/  adr_city ; 
 int /*<<< orphan*/  adr_country ; 
 int /*<<< orphan*/  adr_district ; 
 int /*<<< orphan*/  adr_house ; 
 int /*<<< orphan*/  adr_name ; 
 int /*<<< orphan*/  adr_station ; 
 int /*<<< orphan*/  adr_street ; 
 int /*<<< orphan*/  adr_type ; 
 int /*<<< orphan*/  age ; 
 int /*<<< orphan*/  alcohol ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bday ; 
 int /*<<< orphan*/  birthday_soon ; 
 int /*<<< orphan*/  bmonth ; 
 int /*<<< orphan*/  browser ; 
 int /*<<< orphan*/  byear ; 
 int /*<<< orphan*/  chair ; 
 int /*<<< orphan*/  city ; 
 int /*<<< orphan*/  company ; 
 int /*<<< orphan*/  company_name ; 
 TYPE_2__* FUNC7 (TYPE_2__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  country ; 
 int /*<<< orphan*/  custom1 ; 
 int /*<<< orphan*/  custom10 ; 
 int /*<<< orphan*/  custom11 ; 
 int /*<<< orphan*/  custom12 ; 
 int /*<<< orphan*/  custom13 ; 
 int /*<<< orphan*/  custom14 ; 
 int /*<<< orphan*/  custom15 ; 
 int /*<<< orphan*/  custom2 ; 
 int /*<<< orphan*/  custom3 ; 
 int /*<<< orphan*/  custom4 ; 
 int /*<<< orphan*/  custom5 ; 
 int /*<<< orphan*/  custom6 ; 
 int /*<<< orphan*/  custom7 ; 
 int /*<<< orphan*/  custom8 ; 
 int /*<<< orphan*/  custom9 ; 
 int /*<<< orphan*/  cvisited ; 
 int /*<<< orphan*/  edu_form ; 
 int /*<<< orphan*/  edu_status ; 
 int /*<<< orphan*/  education ; 
 int /*<<< orphan*/  faculty ; 
 int /*<<< orphan*/  future_age ; 
 int /*<<< orphan*/  gcountry ; 
 int /*<<< orphan*/  graduation ; 
 int /*<<< orphan*/  grp_id ; 
 int /*<<< orphan*/  grp_type ; 
 int /*<<< orphan*/  has_photo ; 
 int /*<<< orphan*/  height ; 
 int /*<<< orphan*/  hidden ; 
 int /*<<< orphan*/  hometown ; 
 int /*<<< orphan*/  id ; 
 int /*<<< orphan*/  iiothers ; 
 int /*<<< orphan*/  interests ; 
 int /*<<< orphan*/  job ; 
 int /*<<< orphan*/  lang_id ; 
 int /*<<< orphan*/  mil_finish ; 
 int /*<<< orphan*/  mil_start ; 
 int /*<<< orphan*/  mil_unit ; 
 int /*<<< orphan*/  military ; 
 int /*<<< orphan*/  mstatus ; 
 int /*<<< orphan*/  name ; 
 int /*<<< orphan*/  name_interests ; 
 int /*<<< orphan*/  online ; 
 int /*<<< orphan*/  operator ; 
 int /*<<< orphan*/  pays_money ; 
 int /*<<< orphan*/  political ; 
 int /*<<< orphan*/  ppriority ; 
 int /*<<< orphan*/  privacy ; 
 int /*<<< orphan*/  proposal ; 
#define  q_and 135 
#define  q_birthday_today 134 
#define  q_birthday_tomorrow 133 
#define  q_false 132 
#define  q_inlist 131 
#define  q_not 130 
#define  q_or 129 
#define  q_true 128 
 int /*<<< orphan*/  random ; 
 int /*<<< orphan*/  region ; 
 int /*<<< orphan*/  religion ; 
 int /*<<< orphan*/  sch_city ; 
 int /*<<< orphan*/  sch_class ; 
 int /*<<< orphan*/  sch_country ; 
 int /*<<< orphan*/  sch_grad ; 
 int /*<<< orphan*/  sch_id ; 
 int /*<<< orphan*/  sch_spec ; 
 int /*<<< orphan*/  school ; 
 int /*<<< orphan*/  sex ; 
 int /*<<< orphan*/  smoking ; 
 int /*<<< orphan*/  timezone ; 
 int /*<<< orphan*/  uni_city ; 
 int /*<<< orphan*/  uni_country ; 
 int /*<<< orphan*/  univ ; 
 int /*<<< orphan*/  uses_apps ; 
 TYPE_2__* FUNC8 (int) ; 

condition_t FUNC9 (query_t *Q, condition_t true_branch, condition_t false_branch, int opt_level) {
  if (Q->flags & 1) {
    condition_t tmp = true_branch;
    true_branch = false_branch;
    false_branch = tmp;
  }
  if (Q->flags & 2) {
    condition_func_t quantifier_first, quantifier_next;
    switch (Q->type) {
      FUNC5 (education);
      FUNC5 (military);
      FUNC5 (address);
      FUNC5 (company);
      FUNC5 (school);
    default:
      FUNC6 (0);
    }
    condition_t A = FUNC8 (sizeof (struct condition_basic));
    condition_t B = FUNC8 (sizeof (struct condition_basic));
    A->eval = quantifier_first;
    B->eval = quantifier_next;
    A->false_branch = B->false_branch = false_branch;
    A->true_branch = B->true_branch = FUNC9 (Q->left, true_branch, B, opt_level);
    return A;
  }

  switch (Q->type) {
  case q_and:
    return FUNC9 (Q->left, FUNC9 (Q->right, true_branch, false_branch, opt_level), false_branch, opt_level);
  case q_or:
    return FUNC9 (Q->left, true_branch, FUNC9 (Q->right, true_branch, false_branch, opt_level), opt_level);
  case q_not:
    return FUNC9 (Q->left, false_branch, true_branch, opt_level);
  case q_false:
    return false_branch;
  case q_true:
    return true_branch;
  case q_inlist:
    return FUNC7 (true_branch, false_branch, opt_level);
  case q_birthday_today:
  case q_birthday_tomorrow:
    Q->value = Q->type - q_birthday_today;
    FUNC0 (birthday_soon);

    FUNC1 (random);
    FUNC1 (id);
    FUNC0 (country);
    FUNC0 (city);
    FUNC1 (bday);
    FUNC1 (bmonth);
    FUNC1 (byear);
    FUNC1 (age);
    FUNC1 (future_age);
    FUNC0 (political);
    FUNC0 (sex);
    FUNC0 (operator);
    FUNC1 (browser);
    FUNC0 (region);
    FUNC1 (height);
    FUNC0 (smoking);
    FUNC0 (alcohol);
    FUNC0 (ppriority);
    FUNC0 (iiothers);
    FUNC1 (hidden);
    FUNC1 (cvisited);
    FUNC0 (gcountry);
    FUNC1 (custom1);
    FUNC1 (custom2);
    FUNC1 (custom3);
    FUNC1 (custom4);
    FUNC1 (custom5);
    FUNC1 (custom6);
    FUNC1 (custom7);
    FUNC1 (custom8);
    FUNC1 (custom9);
    FUNC1 (custom10);
    FUNC1 (custom11);
    FUNC1 (custom12);
    FUNC1 (custom13);
    FUNC1 (custom14);
    FUNC1 (custom15);
    FUNC1 (timezone);
    FUNC0 (mstatus);
    FUNC0 (grp_type);  
    FUNC0 (grp_id);
    FUNC0 (lang_id);
    FUNC4 (name);
    FUNC3 (interests);
    FUNC2 (name_interests);
    FUNC3 (religion);
    FUNC3 (hometown);
    FUNC3 (proposal);
    FUNC1 (online);
    FUNC0 (privacy);
    FUNC0 (has_photo);
    FUNC0 (uses_apps);
    FUNC0 (pays_money);

    FUNC0 (uni_country);
    FUNC0 (uni_city);
    FUNC0 (univ);
    FUNC0 (faculty);
    FUNC0 (chair);
    FUNC1 (graduation);
    FUNC0 (edu_form);
    FUNC0 (edu_status);

    FUNC0 (mil_unit);
    FUNC1 (mil_start);
    FUNC1 (mil_finish);

    FUNC0 (adr_country);
    FUNC0 (adr_city);
    FUNC0 (adr_district);
    FUNC0 (adr_station);
    FUNC0 (adr_street);
    FUNC0 (adr_type);
    FUNC3 (adr_house);
    FUNC3 (adr_name);

    FUNC3 (job);
    FUNC3 (company_name);

    FUNC0 (sch_country);
    FUNC0 (sch_city);
    FUNC0 (sch_id);
    FUNC1 (sch_grad);
    FUNC0 (sch_class);
    FUNC3 (sch_spec);

  default:
    FUNC6 (0);
  }
}