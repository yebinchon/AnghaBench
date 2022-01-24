#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {TYPE_5__* uplink; } ;
typedef  TYPE_1__ utree_t ;
struct TYPE_18__ {int sex; int operator; int browser; int region; int height; int smoking; int alcohol; int ppriority; int iiothers; int hidden; int cvisited; int gcountry; int custom1; int custom2; int custom3; int custom4; int custom5; int custom6; int custom7; int custom8; int custom9; int custom10; int custom11; int custom12; int custom13; int custom14; int custom15; int timezone; int has_photo; int mstatus; int political; int uni_country; int uni_city; int bday_year; int bday_month; int bday_day; int /*<<< orphan*/ * weights; int /*<<< orphan*/  clicked_ads; int /*<<< orphan*/  inactive_ads; int /*<<< orphan*/  active_ads; scalar_t__ name; scalar_t__ proposal; scalar_t__ hometown; scalar_t__ religion; int /*<<< orphan*/  uid; int /*<<< orphan*/  proposal_hashes; int /*<<< orphan*/  hometown_hashes; int /*<<< orphan*/  religion_hashes; int /*<<< orphan*/  name_hashes; TYPE_5__* right_rate; TYPE_5__* left_rate; TYPE_5__* uplink_rate; scalar_t__ online_prev; scalar_t__ online_next; int /*<<< orphan*/  last_visited; } ;
typedef  TYPE_2__ user_t ;
struct lev_delete_user {int user_id; } ;
struct TYPE_19__ {TYPE_1__* right; TYPE_1__* left; } ;

/* Variables and functions */
 int /*<<< orphan*/  AdSpace ; 
 TYPE_2__** User ; 
 int /*<<< orphan*/  active_ad_nodes ; 
 int /*<<< orphan*/  clicked_ad_nodes ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  inactive_ad_nodes ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  q_alcohol ; 
 int /*<<< orphan*/  q_bday ; 
 int /*<<< orphan*/  q_bmonth ; 
 int /*<<< orphan*/  q_browser ; 
 int /*<<< orphan*/  q_byear ; 
 int /*<<< orphan*/  q_city ; 
 int /*<<< orphan*/  q_country ; 
 int /*<<< orphan*/  q_custom1 ; 
 int /*<<< orphan*/  q_custom10 ; 
 int /*<<< orphan*/  q_custom11 ; 
 int /*<<< orphan*/  q_custom12 ; 
 int /*<<< orphan*/  q_custom13 ; 
 int /*<<< orphan*/  q_custom14 ; 
 int /*<<< orphan*/  q_custom15 ; 
 int /*<<< orphan*/  q_custom2 ; 
 int /*<<< orphan*/  q_custom3 ; 
 int /*<<< orphan*/  q_custom4 ; 
 int /*<<< orphan*/  q_custom5 ; 
 int /*<<< orphan*/  q_custom6 ; 
 int /*<<< orphan*/  q_custom7 ; 
 int /*<<< orphan*/  q_custom8 ; 
 int /*<<< orphan*/  q_custom9 ; 
 int /*<<< orphan*/  q_cvisited ; 
 int /*<<< orphan*/  q_gcountry ; 
 int /*<<< orphan*/  q_has_photo ; 
 int /*<<< orphan*/  q_height ; 
 int /*<<< orphan*/  q_hidden ; 
 int /*<<< orphan*/  q_iiothers ; 
 int /*<<< orphan*/  q_mstatus ; 
 int /*<<< orphan*/  q_operator ; 
 int /*<<< orphan*/  q_pays_money ; 
 int /*<<< orphan*/  q_political ; 
 int /*<<< orphan*/  q_ppriority ; 
 int /*<<< orphan*/  q_region ; 
 int /*<<< orphan*/  q_sex ; 
 int /*<<< orphan*/  q_smoking ; 
 int /*<<< orphan*/  q_timezone ; 
 int /*<<< orphan*/  q_uses_apps ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tot_users ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 
 TYPE_1__* FUNC18 (TYPE_5__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*,int) ; 

__attribute__((used)) static int FUNC20 (struct lev_delete_user *E) {
  int user_id = E->user_id;
  int s = FUNC0 (user_id);
  if (s < 0) {
    return 0;
  }
  user_t *U = User[s];

  if (!U) {
    return 0;
  }

  --tot_users;

  if (U->online_next) {
    FUNC6 (FUNC17 (U));
    FUNC5 (FUNC4 (U->last_visited), -1);
  }

  U->online_next = U->online_prev = 0;

  utree_t *new_tree = FUNC18 (U->left_rate, U->right_rate);

  if (new_tree) {
    new_tree->uplink = U->uplink_rate;
  }

  if (U->uplink_rate->left == (utree_t *) U) {
    U->uplink_rate->left = new_tree;
  } else {
    U->uplink_rate->right = new_tree;
  }

  U->uplink_rate = U->left_rate = U->right_rate = 0;

  FUNC9 (U);
  FUNC15 (U);
  FUNC8 (U);
  FUNC14 (U);
  FUNC16 (U);
  FUNC11 (U);
  FUNC13 (U);
  FUNC10 (U->uid, q_sex, U->sex);
  FUNC10 (U->uid, q_operator, U->operator);
  FUNC10 (U->uid, q_browser, U->browser);
  FUNC10 (U->uid, q_region, U->region);
  FUNC10 (U->uid, q_height, U->height);
  FUNC10 (U->uid, q_smoking, U->smoking);
  FUNC10 (U->uid, q_alcohol, U->alcohol);
  FUNC10 (U->uid, q_ppriority, U->ppriority);
  FUNC10 (U->uid, q_iiothers, U->iiothers);
  FUNC10 (U->uid, q_hidden, U->hidden);
  FUNC10 (U->uid, q_cvisited, U->cvisited);
  FUNC10 (U->uid, q_gcountry, U->gcountry);
  FUNC10 (U->uid, q_custom1, U->custom1);
  FUNC10 (U->uid, q_custom2, U->custom2);
  FUNC10 (U->uid, q_custom3, U->custom3);
  FUNC10 (U->uid, q_custom4, U->custom4);
  FUNC10 (U->uid, q_custom5, U->custom5);
  FUNC10 (U->uid, q_custom6, U->custom6);
  FUNC10 (U->uid, q_custom7, U->custom7);
  FUNC10 (U->uid, q_custom8, U->custom8);
  FUNC10 (U->uid, q_custom9, U->custom9);
  FUNC10 (U->uid, q_custom10, U->custom10);
  FUNC10 (U->uid, q_custom11, U->custom11);
  FUNC10 (U->uid, q_custom12, U->custom12);
  FUNC10 (U->uid, q_custom13, U->custom13);
  FUNC10 (U->uid, q_custom14, U->custom14);
  FUNC10 (U->uid, q_custom15, U->custom15);
  FUNC10 (U->uid, q_timezone, U->timezone);
  FUNC10 (U->uid, q_has_photo, (U->has_photo & 0x81) == 1);
  FUNC10 (U->uid, q_uses_apps, (U->has_photo & 0x82) == 2);
  FUNC10 (U->uid, q_pays_money, (U->has_photo & 0x84) == 4);
  FUNC10 (U->uid, q_mstatus, U->mstatus);
  FUNC10 (U->uid, q_political, U->political);
  FUNC10 (U->uid, q_country, U->uni_country);
  FUNC10 (U->uid, q_city, U->uni_city);
  FUNC1 (U->uid, U->name_hashes);
  FUNC1 (U->uid, U->religion_hashes);
  FUNC1 (U->uid, U->hometown_hashes);
  FUNC1 (U->uid, U->proposal_hashes);
  FUNC10 (U->uid, q_byear, U->bday_year);
  FUNC10 (U->uid, q_bmonth, U->bday_month);
  FUNC10 (U->uid, q_bday, U->bday_day);
  FUNC2 (U->religion);
  FUNC2 (U->name);
  FUNC2 (U->hometown);
  FUNC2 (U->proposal);
  U->name = 0;
  FUNC12 (U, -1);

  active_ad_nodes -= FUNC3 (AdSpace, U->active_ads);
  inactive_ad_nodes -= FUNC3 (AdSpace, U->inactive_ads);
  clicked_ad_nodes -= FUNC3 (AdSpace, U->clicked_ads);
  if (U->weights) {
    FUNC7 (U->weights);
    U->weights = NULL;
  }
  FUNC19 (U, sizeof (user_t));
  User[s] = 0;

  return 1;
}