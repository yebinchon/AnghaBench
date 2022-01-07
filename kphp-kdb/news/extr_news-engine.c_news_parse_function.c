
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_act_extra {int dummy; } ;


 int COMM_MODE ;
 int NOTIFY_MODE ;
 int RECOMMEND_MODE ;
 int TL_ERROR_UNKNOWN_FUNCTION_ID ;
 int TL_ERROR_WRONG_ACTOR_ID ;
 int UG_MODE ;
 struct tl_act_extra* tl_cnews_add_bookmark () ;
 struct tl_act_extra* tl_cnews_del_bookmark () ;
 struct tl_act_extra* tl_cnews_delete_update () ;
 struct tl_act_extra* tl_cnews_delete_updates () ;
 struct tl_act_extra* tl_cnews_get_raw_updates () ;
 struct tl_act_extra* tl_cnews_get_raw_user_updates () ;
 struct tl_act_extra* tl_cnews_undelete_update () ;
 struct tl_act_extra* tl_cnews_update () ;
 scalar_t__ tl_fetch_error () ;
 int tl_fetch_int () ;
 int tl_fetch_set_error (char*,int ) ;
 int tl_fetch_set_error_format (int ,char*,int) ;
 struct tl_act_extra* tl_news_delete () ;
 struct tl_act_extra* tl_news_error_bad_mode (int) ;
 struct tl_act_extra* tl_news_get_privacy_mask () ;
 struct tl_act_extra* tl_news_get_raw_updates () ;
 struct tl_act_extra* tl_news_set_privacy_mask () ;
 struct tl_act_extra* tl_news_update () ;
 struct tl_act_extra* tl_nnews_delete_update () ;
 struct tl_act_extra* tl_nnews_delete_updates () ;
 struct tl_act_extra* tl_nnews_delete_user_update () ;
 struct tl_act_extra* tl_nnews_get_grouped_updates () ;
 struct tl_act_extra* tl_nnews_get_updates () ;
 struct tl_act_extra* tl_nnews_undelete_update () ;
 struct tl_act_extra* tl_nnews_undelete_user_update () ;
 struct tl_act_extra* tl_nnews_update () ;
 struct tl_act_extra* tl_rnews_get_rate () ;
 struct tl_act_extra* tl_rnews_get_raw_updates () ;
 struct tl_act_extra* tl_rnews_set_rate () ;
 struct tl_act_extra* tl_rnews_update () ;

struct tl_act_extra *news_parse_function (long long actor_id) {
  if (actor_id != 0) {
    tl_fetch_set_error ("News only support actor_id = 0", TL_ERROR_WRONG_ACTOR_ID);
    return 0;
  }
  int op = tl_fetch_int ();
  if (tl_fetch_error ()) {
    return 0;
  }
  switch (op) {
  case 140:
    if (!UG_MODE) {
      return tl_news_error_bad_mode (op);
    }
    return tl_news_update ();
  case 144:
    if (!UG_MODE) {
      return tl_news_error_bad_mode (op);
    }
    return tl_news_delete ();
  case 141:
    if (!UG_MODE) {
      return tl_news_error_bad_mode (op);
    }
    return tl_news_set_privacy_mask ();
  case 143:
    if (!UG_MODE) {
      return tl_news_error_bad_mode (op);
    }
    return tl_news_get_privacy_mask ();
  case 142:
    if (!UG_MODE) {
      return tl_news_error_bad_mode (op);
    }
    return tl_news_get_raw_updates ();
  case 132:
    if (!NOTIFY_MODE) {
      return tl_news_error_bad_mode (op);
    }
    return tl_nnews_update ();
  case 138:
    if (!NOTIFY_MODE) {
      return tl_news_error_bad_mode (op);
    }
    return tl_nnews_delete_updates ();
  case 139:
    if (!NOTIFY_MODE) {
      return tl_news_error_bad_mode (op);
    }
    return tl_nnews_delete_update ();
  case 134:
    if (!NOTIFY_MODE) {
      return tl_news_error_bad_mode (op);
    }
    return tl_nnews_undelete_update ();
  case 137:
    if (!NOTIFY_MODE) {
      return tl_news_error_bad_mode (op);
    }
    return tl_nnews_delete_user_update ();
  case 133:
    if (!NOTIFY_MODE) {
      return tl_news_error_bad_mode (op);
    }
    return tl_nnews_undelete_user_update ();
  case 135:
    if (!NOTIFY_MODE) {
      return tl_news_error_bad_mode (op);
    }
    return tl_nnews_get_updates ();
  case 136:
    if (!NOTIFY_MODE) {
      return tl_news_error_bad_mode (op);
    }
    return tl_nnews_get_grouped_updates ();
  case 145:
    if (!COMM_MODE) {
      return tl_news_error_bad_mode (op);
    }
    return tl_cnews_update ();
  case 150:
    if (!COMM_MODE) {
      return tl_news_error_bad_mode (op);
    }
    return tl_cnews_delete_updates ();
  case 151:
    if (!COMM_MODE) {
      return tl_news_error_bad_mode (op);
    }
    return tl_cnews_delete_update ();
  case 146:
    if (!COMM_MODE) {
      return tl_news_error_bad_mode (op);
    }
    return tl_cnews_undelete_update ();
  case 148:
    if (!COMM_MODE) {
      return tl_news_error_bad_mode (op);
    }
    return tl_cnews_get_raw_updates ();
  case 147:
    if (!COMM_MODE) {
      return tl_news_error_bad_mode (op);
    }
    return tl_cnews_get_raw_user_updates ();
  case 152:
    if (!COMM_MODE) {
      return tl_news_error_bad_mode (op);
    }
    return tl_cnews_add_bookmark ();
  case 149:
    if (!COMM_MODE) {
      return tl_news_error_bad_mode (op);
    }
    return tl_cnews_del_bookmark ();
  case 128:
    if (!RECOMMEND_MODE) {
      return tl_news_error_bad_mode (op);
    }
    return tl_rnews_update ();
  case 129:
    if (!RECOMMEND_MODE) {
      return tl_news_error_bad_mode (op);
    }
    return tl_rnews_set_rate ();
  case 131:
    if (!RECOMMEND_MODE) {
      return tl_news_error_bad_mode (op);
    }
    return tl_rnews_get_rate ();
  case 130:
    if (!RECOMMEND_MODE) {
      return tl_news_error_bad_mode (op);
    }
    return tl_rnews_get_raw_updates ();
  default:
    tl_fetch_set_error_format (TL_ERROR_UNKNOWN_FUNCTION_ID, "Unknown op 0x%08x", op);
    return 0;
  }
}
