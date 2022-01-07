
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {TYPE_5__* uplink; } ;
typedef TYPE_1__ utree_t ;
struct TYPE_18__ {int sex; int operator; int browser; int region; int height; int smoking; int alcohol; int ppriority; int iiothers; int hidden; int cvisited; int gcountry; int custom1; int custom2; int custom3; int custom4; int custom5; int custom6; int custom7; int custom8; int custom9; int custom10; int custom11; int custom12; int custom13; int custom14; int custom15; int timezone; int has_photo; int mstatus; int political; int uni_country; int uni_city; int bday_year; int bday_month; int bday_day; int * weights; int clicked_ads; int inactive_ads; int active_ads; scalar_t__ name; scalar_t__ proposal; scalar_t__ hometown; scalar_t__ religion; int uid; int proposal_hashes; int hometown_hashes; int religion_hashes; int name_hashes; TYPE_5__* right_rate; TYPE_5__* left_rate; TYPE_5__* uplink_rate; scalar_t__ online_prev; scalar_t__ online_next; int last_visited; } ;
typedef TYPE_2__ user_t ;
struct lev_delete_user {int user_id; } ;
struct TYPE_19__ {TYPE_1__* right; TYPE_1__* left; } ;


 int AdSpace ;
 TYPE_2__** User ;
 int active_ad_nodes ;
 int clicked_ad_nodes ;
 int conv_user_id (int) ;
 int delete_user_hashlist (int ,int ) ;
 int exact_strfree (scalar_t__) ;
 int inactive_ad_nodes ;
 scalar_t__ intree_free (int ,int ) ;
 int online_convert_time (int ) ;
 int online_increment (int ,int) ;
 int online_list_remove (int ) ;
 int q_alcohol ;
 int q_bday ;
 int q_bmonth ;
 int q_browser ;
 int q_byear ;
 int q_city ;
 int q_country ;
 int q_custom1 ;
 int q_custom10 ;
 int q_custom11 ;
 int q_custom12 ;
 int q_custom13 ;
 int q_custom14 ;
 int q_custom15 ;
 int q_custom2 ;
 int q_custom3 ;
 int q_custom4 ;
 int q_custom5 ;
 int q_custom6 ;
 int q_custom7 ;
 int q_custom8 ;
 int q_custom9 ;
 int q_cvisited ;
 int q_gcountry ;
 int q_has_photo ;
 int q_height ;
 int q_hidden ;
 int q_iiothers ;
 int q_mstatus ;
 int q_operator ;
 int q_pays_money ;
 int q_political ;
 int q_ppriority ;
 int q_region ;
 int q_sex ;
 int q_smoking ;
 int q_timezone ;
 int q_uses_apps ;
 int targ_weights_vector_free (int *) ;
 int tot_users ;
 int user_clear_addresses (TYPE_2__*) ;
 int user_clear_education (TYPE_2__*) ;
 int user_clear_field (int ,int ,int) ;
 int user_clear_groups (TYPE_2__*) ;
 int user_clear_interests (TYPE_2__*,int) ;
 int user_clear_langs (TYPE_2__*) ;
 int user_clear_military (TYPE_2__*) ;
 int user_clear_schools (TYPE_2__*) ;
 int user_clear_work (TYPE_2__*) ;
 int user_to_olist (TYPE_2__*) ;
 TYPE_1__* utree_merge (TYPE_5__*,TYPE_5__*) ;
 int zfree (TYPE_2__*,int) ;

__attribute__((used)) static int delete_user (struct lev_delete_user *E) {
  int user_id = E->user_id;
  int s = conv_user_id (user_id);
  if (s < 0) {
    return 0;
  }
  user_t *U = User[s];

  if (!U) {
    return 0;
  }

  --tot_users;

  if (U->online_next) {
    online_list_remove (user_to_olist (U));
    online_increment (online_convert_time (U->last_visited), -1);
  }

  U->online_next = U->online_prev = 0;

  utree_t *new_tree = utree_merge (U->left_rate, U->right_rate);

  if (new_tree) {
    new_tree->uplink = U->uplink_rate;
  }

  if (U->uplink_rate->left == (utree_t *) U) {
    U->uplink_rate->left = new_tree;
  } else {
    U->uplink_rate->right = new_tree;
  }

  U->uplink_rate = U->left_rate = U->right_rate = 0;

  user_clear_education (U);
  user_clear_schools (U);
  user_clear_addresses (U);
  user_clear_military (U);
  user_clear_work (U);
  user_clear_groups (U);
  user_clear_langs (U);
  user_clear_field (U->uid, q_sex, U->sex);
  user_clear_field (U->uid, q_operator, U->operator);
  user_clear_field (U->uid, q_browser, U->browser);
  user_clear_field (U->uid, q_region, U->region);
  user_clear_field (U->uid, q_height, U->height);
  user_clear_field (U->uid, q_smoking, U->smoking);
  user_clear_field (U->uid, q_alcohol, U->alcohol);
  user_clear_field (U->uid, q_ppriority, U->ppriority);
  user_clear_field (U->uid, q_iiothers, U->iiothers);
  user_clear_field (U->uid, q_hidden, U->hidden);
  user_clear_field (U->uid, q_cvisited, U->cvisited);
  user_clear_field (U->uid, q_gcountry, U->gcountry);
  user_clear_field (U->uid, q_custom1, U->custom1);
  user_clear_field (U->uid, q_custom2, U->custom2);
  user_clear_field (U->uid, q_custom3, U->custom3);
  user_clear_field (U->uid, q_custom4, U->custom4);
  user_clear_field (U->uid, q_custom5, U->custom5);
  user_clear_field (U->uid, q_custom6, U->custom6);
  user_clear_field (U->uid, q_custom7, U->custom7);
  user_clear_field (U->uid, q_custom8, U->custom8);
  user_clear_field (U->uid, q_custom9, U->custom9);
  user_clear_field (U->uid, q_custom10, U->custom10);
  user_clear_field (U->uid, q_custom11, U->custom11);
  user_clear_field (U->uid, q_custom12, U->custom12);
  user_clear_field (U->uid, q_custom13, U->custom13);
  user_clear_field (U->uid, q_custom14, U->custom14);
  user_clear_field (U->uid, q_custom15, U->custom15);
  user_clear_field (U->uid, q_timezone, U->timezone);
  user_clear_field (U->uid, q_has_photo, (U->has_photo & 0x81) == 1);
  user_clear_field (U->uid, q_uses_apps, (U->has_photo & 0x82) == 2);
  user_clear_field (U->uid, q_pays_money, (U->has_photo & 0x84) == 4);
  user_clear_field (U->uid, q_mstatus, U->mstatus);
  user_clear_field (U->uid, q_political, U->political);
  user_clear_field (U->uid, q_country, U->uni_country);
  user_clear_field (U->uid, q_city, U->uni_city);
  delete_user_hashlist (U->uid, U->name_hashes);
  delete_user_hashlist (U->uid, U->religion_hashes);
  delete_user_hashlist (U->uid, U->hometown_hashes);
  delete_user_hashlist (U->uid, U->proposal_hashes);
  user_clear_field (U->uid, q_byear, U->bday_year);
  user_clear_field (U->uid, q_bmonth, U->bday_month);
  user_clear_field (U->uid, q_bday, U->bday_day);
  exact_strfree (U->religion);
  exact_strfree (U->name);
  exact_strfree (U->hometown);
  exact_strfree (U->proposal);
  U->name = 0;
  user_clear_interests (U, -1);

  active_ad_nodes -= intree_free (AdSpace, U->active_ads);
  inactive_ad_nodes -= intree_free (AdSpace, U->inactive_ads);
  clicked_ad_nodes -= intree_free (AdSpace, U->clicked_ads);
  if (U->weights) {
    targ_weights_vector_free (U->weights);
    U->weights = ((void*)0);
  }
  zfree (U, sizeof (user_t));
  User[s] = 0;

  return 1;
}
