
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct advert {int* user_list; int users; int prev_user_creations; int userlist_computed_at; int flags; int ad_id; int query; } ;


 int ADF_PERIODIC ;
 int MAX_USERS ;
 int Q_limit ;
 scalar_t__ Q_order ;
 int R ;
 int R_cnt ;
 int R_position ;
 int assert (int) ;
 scalar_t__ aux_userlist_tag ;
 int compile_query (int ) ;
 int free (int*) ;
 scalar_t__ global_birthday_in_query ;
 int* malloc (int) ;
 int memcpy (int*,int ,int) ;
 int now ;
 int perform_query (int ) ;
 int process_lru_ads () ;
 int tot_userlists ;
 int tot_userlists_size ;
 int user_creations ;

__attribute__((used)) static int compute_ad_user_list (struct advert *A) {
  if (A->user_list) {
    tot_userlists--;
    tot_userlists_size -= A->users;
    free (A->user_list);
    A->user_list = 0;
    A->users = 0;
  }

  process_lru_ads ();

  aux_userlist_tag = 0;

  assert (!compile_query (A->query));
  R_position = -1;
  Q_limit = MAX_USERS;
  Q_order = 0;
  global_birthday_in_query = 0;

  int res = perform_query (A->ad_id);
  R_position = 0;

  if (global_birthday_in_query) {
    A->flags |= ADF_PERIODIC;
  } else {
    A->flags &= ~ADF_PERIODIC;
  }

  assert (res >= 0 && res == R_cnt);

  A->users = res;

  A->user_list = malloc (res * 4 + 4);
  memcpy (A->user_list, R, res * 4);
  A->user_list[res] = 0x7fffffff;
  A->userlist_computed_at = now;
  A->prev_user_creations = user_creations;

  tot_userlists++;
  tot_userlists_size += res;

  return res;
}
