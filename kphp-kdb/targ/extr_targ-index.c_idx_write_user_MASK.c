#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int user_id; int rate; int last_visited; int uni_city; int region; int /*<<< orphan*/  clicked_ads; int /*<<< orphan*/  inactive_ads; int /*<<< orphan*/  active_ads; TYPE_2__* langs; TYPE_1__* grp; struct school* mil; struct school* inter; struct school* addr; struct school* work; struct school* sch; struct school* edu; int /*<<< orphan*/  proposal; int /*<<< orphan*/  hometown; int /*<<< orphan*/  religion; int /*<<< orphan*/  name; int /*<<< orphan*/  proposal_hashes; int /*<<< orphan*/  hometown_hashes; int /*<<< orphan*/  religion_hashes; int /*<<< orphan*/  inter_hashes; int /*<<< orphan*/  name_hashes; int /*<<< orphan*/  custom_fields; int /*<<< orphan*/  gcountry; int /*<<< orphan*/  hidden; int /*<<< orphan*/  cvisited; int /*<<< orphan*/  iiothers; int /*<<< orphan*/  ppriority; int /*<<< orphan*/  alcohol; int /*<<< orphan*/  smoking; int /*<<< orphan*/  height; int /*<<< orphan*/  timezone; int /*<<< orphan*/  operator; int /*<<< orphan*/  browser; int /*<<< orphan*/  has_photo; int /*<<< orphan*/  privacy; int /*<<< orphan*/  cute; int /*<<< orphan*/  uni_country; int /*<<< orphan*/  mstatus; int /*<<< orphan*/  sex; int /*<<< orphan*/  political; int /*<<< orphan*/  bday_year; int /*<<< orphan*/  bday_month; int /*<<< orphan*/  bday_day; int /*<<< orphan*/  user_group_types; } ;
typedef  TYPE_3__ user_t ;
struct school {int grad_year; int chair; int faculty; int university; int city; int school; int company; int district; int station; int street; int unit_id; int /*<<< orphan*/  finish; int /*<<< orphan*/  start; struct school* next; int /*<<< orphan*/  text; int /*<<< orphan*/  flags; int /*<<< orphan*/  type; int /*<<< orphan*/  name; int /*<<< orphan*/  house; int /*<<< orphan*/  name_hashes; int /*<<< orphan*/  house_hashes; int /*<<< orphan*/  atype; int /*<<< orphan*/  country; int /*<<< orphan*/  job; int /*<<< orphan*/  company_name; int /*<<< orphan*/  job_hashes; int /*<<< orphan*/  spec; int /*<<< orphan*/  spec_hashes; int /*<<< orphan*/  sch_type; int /*<<< orphan*/  sch_class; int /*<<< orphan*/  grad; int /*<<< orphan*/  primary; int /*<<< orphan*/  edu_status; int /*<<< orphan*/  edu_form; } ;
struct military {int grad_year; int chair; int faculty; int university; int city; int school; int company; int district; int station; int street; int unit_id; int /*<<< orphan*/  finish; int /*<<< orphan*/  start; struct military* next; int /*<<< orphan*/  text; int /*<<< orphan*/  flags; int /*<<< orphan*/  type; int /*<<< orphan*/  name; int /*<<< orphan*/  house; int /*<<< orphan*/  name_hashes; int /*<<< orphan*/  house_hashes; int /*<<< orphan*/  atype; int /*<<< orphan*/  country; int /*<<< orphan*/  job; int /*<<< orphan*/  company_name; int /*<<< orphan*/  job_hashes; int /*<<< orphan*/  spec; int /*<<< orphan*/  spec_hashes; int /*<<< orphan*/  sch_type; int /*<<< orphan*/  sch_class; int /*<<< orphan*/  grad; int /*<<< orphan*/  primary; int /*<<< orphan*/  edu_status; int /*<<< orphan*/  edu_form; } ;
struct interest {int grad_year; int chair; int faculty; int university; int city; int school; int company; int district; int station; int street; int unit_id; int /*<<< orphan*/  finish; int /*<<< orphan*/  start; struct interest* next; int /*<<< orphan*/  text; int /*<<< orphan*/  flags; int /*<<< orphan*/  type; int /*<<< orphan*/  name; int /*<<< orphan*/  house; int /*<<< orphan*/  name_hashes; int /*<<< orphan*/  house_hashes; int /*<<< orphan*/  atype; int /*<<< orphan*/  country; int /*<<< orphan*/  job; int /*<<< orphan*/  company_name; int /*<<< orphan*/  job_hashes; int /*<<< orphan*/  spec; int /*<<< orphan*/  spec_hashes; int /*<<< orphan*/  sch_type; int /*<<< orphan*/  sch_class; int /*<<< orphan*/  grad; int /*<<< orphan*/  primary; int /*<<< orphan*/  edu_status; int /*<<< orphan*/  edu_form; } ;
struct education {int grad_year; int chair; int faculty; int university; int city; int school; int company; int district; int station; int street; int unit_id; int /*<<< orphan*/  finish; int /*<<< orphan*/  start; struct education* next; int /*<<< orphan*/  text; int /*<<< orphan*/  flags; int /*<<< orphan*/  type; int /*<<< orphan*/  name; int /*<<< orphan*/  house; int /*<<< orphan*/  name_hashes; int /*<<< orphan*/  house_hashes; int /*<<< orphan*/  atype; int /*<<< orphan*/  country; int /*<<< orphan*/  job; int /*<<< orphan*/  company_name; int /*<<< orphan*/  job_hashes; int /*<<< orphan*/  spec; int /*<<< orphan*/  spec_hashes; int /*<<< orphan*/  sch_type; int /*<<< orphan*/  sch_class; int /*<<< orphan*/  grad; int /*<<< orphan*/  primary; int /*<<< orphan*/  edu_status; int /*<<< orphan*/  edu_form; } ;
struct company {int grad_year; int chair; int faculty; int university; int city; int school; int company; int district; int station; int street; int unit_id; int /*<<< orphan*/  finish; int /*<<< orphan*/  start; struct company* next; int /*<<< orphan*/  text; int /*<<< orphan*/  flags; int /*<<< orphan*/  type; int /*<<< orphan*/  name; int /*<<< orphan*/  house; int /*<<< orphan*/  name_hashes; int /*<<< orphan*/  house_hashes; int /*<<< orphan*/  atype; int /*<<< orphan*/  country; int /*<<< orphan*/  job; int /*<<< orphan*/  company_name; int /*<<< orphan*/  job_hashes; int /*<<< orphan*/  spec; int /*<<< orphan*/  spec_hashes; int /*<<< orphan*/  sch_type; int /*<<< orphan*/  sch_class; int /*<<< orphan*/  grad; int /*<<< orphan*/  primary; int /*<<< orphan*/  edu_status; int /*<<< orphan*/  edu_form; } ;
struct address {int grad_year; int chair; int faculty; int university; int city; int school; int company; int district; int station; int street; int unit_id; int /*<<< orphan*/  finish; int /*<<< orphan*/  start; struct address* next; int /*<<< orphan*/  text; int /*<<< orphan*/  flags; int /*<<< orphan*/  type; int /*<<< orphan*/  name; int /*<<< orphan*/  house; int /*<<< orphan*/  name_hashes; int /*<<< orphan*/  house_hashes; int /*<<< orphan*/  atype; int /*<<< orphan*/  country; int /*<<< orphan*/  job; int /*<<< orphan*/  company_name; int /*<<< orphan*/  job_hashes; int /*<<< orphan*/  spec; int /*<<< orphan*/  spec_hashes; int /*<<< orphan*/  sch_type; int /*<<< orphan*/  sch_class; int /*<<< orphan*/  grad; int /*<<< orphan*/  primary; int /*<<< orphan*/  edu_status; int /*<<< orphan*/  edu_form; } ;
struct TYPE_7__ {int cur_langs; int /*<<< orphan*/  L; } ;
struct TYPE_6__ {int cur_groups; int /*<<< orphan*/  G; } ;

/* Variables and functions */
 int /*<<< orphan*/  AdSpace ; 
 int TARG_INDEX_USER_STRUCT_V1_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int FUNC1 (struct school*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  return_not_ancient ; 
 int /*<<< orphan*/  return_one ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  writeout_xz ; 
 int /*<<< orphan*/  writeout_xz_not_ancient ; 

__attribute__((used)) static void FUNC11 (user_t *U) {
  FUNC0 (U);

  FUNC7 (TARG_INDEX_USER_STRUCT_V1_MAGIC);
  FUNC7 (U->user_id);
  FUNC7 (FUNC2 (AdSpace, U->active_ads, return_one));
  FUNC7 (FUNC2 (AdSpace, U->inactive_ads, return_not_ancient));
  FUNC7 (FUNC2 (AdSpace, U->clicked_ads, return_one));
  FUNC7 (U->rate >> 8);
  FUNC7 (U->last_visited);
  FUNC7 (U->uni_city);
  FUNC7 (U->region);
  FUNC3 (U->user_group_types, 16);
  FUNC5 (U->bday_day);
  FUNC5 (U->bday_month);
  FUNC8 (U->bday_year);
  FUNC5 (U->political);
  FUNC5 (U->sex);
  FUNC5 (U->mstatus);
  FUNC5 (U->uni_country);
  FUNC5 (U->cute);
  FUNC5 (U->privacy);
  FUNC5 (U->has_photo);
  FUNC5 (U->browser);
  FUNC8 (U->operator);
  FUNC8 (U->timezone);
  FUNC5 (U->height);
  FUNC5 (U->smoking);
  FUNC5 (U->alcohol);
  FUNC5 (U->ppriority);
  FUNC5 (U->iiothers);
  FUNC5 (U->cvisited);
  FUNC5 (U->hidden);
  FUNC5 (U->gcountry);
  FUNC3 (U->custom_fields, 15);

  FUNC10 (FUNC1 (U->edu));
  FUNC10 (FUNC1 (U->sch));
  FUNC10 (FUNC1 (U->work));
  FUNC10 (FUNC1 (U->addr));
  FUNC10 (FUNC1 (U->inter));
  FUNC10 (FUNC1 (U->mil));
  FUNC10 (U->grp ? U->grp->cur_groups : 0);
  FUNC10 (U->langs ? U->langs->cur_langs : 0);

  FUNC6 (U->name_hashes);
  FUNC6 (U->inter_hashes);
  FUNC6 (U->religion_hashes);
  FUNC6 (U->hometown_hashes);
  FUNC6 (U->proposal_hashes);

  FUNC9 (U->name);
  FUNC9 (U->religion);
  FUNC9 (U->hometown);
  FUNC9 (U->proposal);

  struct education *E;
  for (E = U->edu; E; E = E->next) {
    FUNC7 (E->grad_year);
    FUNC7 (E->chair);
    FUNC7 (E->faculty);
    FUNC7 (E->university);
    FUNC7 (E->city);
    FUNC5 (E->country);
    FUNC5 (E->edu_form);
    FUNC5 (E->edu_status);
    FUNC5 (E->primary);
  }

  struct school *S;
  for (S = U->sch; S; S = S->next) {
    FUNC7 (S->city);
    FUNC7 (S->school);
    FUNC8 (S->start);
    FUNC8 (S->finish);
    FUNC8 (S->grad);
    FUNC5 (S->country);
    FUNC5 (S->sch_class);
    FUNC5 (S->sch_type);
    FUNC6 (S->spec_hashes);
    FUNC9 (S->spec);
  }

  struct company *C;
  for (C = U->work; C; C = C->next) {
    FUNC7 (C->city);
    FUNC7 (C->company);
    FUNC8 (C->start);
    FUNC8 (C->finish);
    FUNC5 (C->country);
    FUNC6 (C->name_hashes);
    FUNC6 (C->job_hashes);
    FUNC9 (C->company_name);
    FUNC9 (C->job);
  }

  struct address *A;
  for (A = U->addr; A; A = A->next) {
    FUNC7 (A->city);
    FUNC7 (A->district);
    FUNC7 (A->station);
    FUNC7 (A->street);
    FUNC5 (A->country);
    FUNC5 (A->atype);
    FUNC6 (A->house_hashes);
    FUNC6 (A->name_hashes);
    FUNC9 (A->house);
    FUNC9 (A->name);
  }

  struct interest *I;
  for (I = U->inter; I; I = I->next) {
    FUNC5 (I->type);
    FUNC5 (I->flags);
    FUNC9 (I->text);
  }

  FUNC4 (4);
  
  struct military *M;
  for (M = U->mil; M; M = M->next) {
    FUNC7 (M->unit_id);
    FUNC8 (M->start);
    FUNC8 (M->finish);
  }

  if (U->grp) {
    FUNC3 (U->grp->G, U->grp->cur_groups * 4);
  }

  if (U->langs) {
    FUNC3 (U->langs->L, U->langs->cur_langs * 2);
  }

  FUNC4 (4);

  FUNC2 (AdSpace, U->active_ads, writeout_xz);
  FUNC2 (AdSpace, U->inactive_ads, writeout_xz_not_ancient);
  FUNC2 (AdSpace, U->clicked_ads, writeout_xz);
}