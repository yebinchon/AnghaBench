
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_act_extra {int dummy; } ;


 int TL_ERROR_UNKNOWN_FUNCTION_ID ;
 int TL_ERROR_WRONG_ACTOR_ID ;
 struct tl_act_extra* tl_datedistr () ;
 int tl_do_list_entry_get ;
 scalar_t__ tl_fetch_error () ;
 int tl_fetch_int () ;
 int tl_fetch_set_error (char*,int ) ;
 int tl_fetch_set_error_format (int ,char*,int) ;
 struct tl_act_extra* tl_list_count (int) ;
 struct tl_act_extra* tl_list_delete () ;
 struct tl_act_extra* tl_list_entry_delete () ;
 struct tl_act_extra* tl_list_entry_get (int ) ;
 struct tl_act_extra* tl_list_entry_get_int (int,int) ;
 struct tl_act_extra* tl_list_entry_get_pos () ;
 struct tl_act_extra* tl_list_entry_get_text () ;
 struct tl_act_extra* tl_list_entry_incr_or_create (int) ;
 struct tl_act_extra* tl_list_entry_set (int) ;
 struct tl_act_extra* tl_list_entry_set_flags (int) ;
 struct tl_act_extra* tl_list_entry_set_text () ;
 struct tl_act_extra* tl_list_entry_set_value (int) ;
 struct tl_act_extra* tl_list_get (int,int) ;
 struct tl_act_extra* tl_list_intersect (int,int,int,int) ;
 struct tl_act_extra* tl_list_set_flags (int) ;
 struct tl_act_extra* tl_list_sorted (int,int) ;
 struct tl_act_extra* tl_list_sum (int,int) ;
 struct tl_act_extra* tl_object_delete () ;
 struct tl_act_extra* tl_sublist_delete (int) ;

struct tl_act_extra *lists_parse_function (long long actor_id) {
  if (actor_id != 0) {
    tl_fetch_set_error ("Lists only support actor_id = 0", TL_ERROR_WRONG_ACTOR_ID);
    return 0;
  }
  int op = tl_fetch_int ();
  if (tl_fetch_error ()) {
    return 0;
  }
  switch (op) {
  case 172:
    return tl_list_delete ();
  case 173:
    return tl_list_entry_delete ();
  case 171:
    return tl_object_delete ();
  case 142:
    return tl_list_entry_set (0);
  case 181:
    return tl_list_entry_set (2);
  case 143:
    return tl_list_entry_set (1);
  case 141:
    return tl_list_entry_set_text ();
  case 140:
    return tl_list_entry_set_flags (0);
  case 180:
    return tl_list_entry_set_flags (1);
  case 154:
    return tl_list_entry_set_flags (2);
  case 176:
    return tl_list_entry_set_flags (3);
  case 138:
    return tl_list_entry_set_value (0);
  case 153:
    return tl_list_entry_set_value (1);
  case 175:
    return tl_list_entry_set_value (2);
  case 152:
    return tl_list_entry_incr_or_create (0);
  case 174:
    return tl_list_entry_incr_or_create (1);
  case 139:
    return tl_list_set_flags (0);
  case 179:
    return tl_list_set_flags (1);
  case 178:
    return tl_list_set_flags (2);
  case 170:
    return tl_sublist_delete (0);
  case 169:
    return tl_sublist_delete (1);
  case 168:
    return tl_list_entry_get (tl_do_list_entry_get);
  case 166:
    return tl_list_entry_get_int (0, 0);
  case 167:
    return tl_list_entry_get_int (0, 1);
  case 165:
    return tl_list_entry_get_int (1, 2);
  case 162:
    return tl_list_entry_get_int (1, 4);
  case 163:
    return tl_list_entry_get_text ();
  case 164:
    return tl_list_entry_get_pos ();
  case 161:
    return tl_list_get (0, 0);
  case 157:
    return tl_list_get (0, 1);
  case 159:
    return tl_list_get (1, 0);
  case 158:
    return tl_list_get (1, 1);
  case 160:
    return tl_list_count (0);
  case 155:
    return tl_list_count (1);
  case 156:
    return tl_list_count (2);
  case 151:
    return tl_list_intersect (1, 0, 0, 0);
  case 148:
    return tl_list_intersect (1, 0, 1, 0);
  case 150:
    return tl_list_intersect (1, 0, 0, 1);
  case 149:
    return tl_list_intersect (1, 0, 1, 1);
  case 147:
    return tl_list_intersect (1, 1, 0, 0);
  case 144:
    return tl_list_intersect (1, 1, 1, 0);
  case 146:
    return tl_list_intersect (1, 1, 0, 1);
  case 145:
    return tl_list_intersect (1, 1, 1, 1);
  case 133:
    return tl_list_intersect (0, 0, 0, 0);
  case 132:
    return tl_list_intersect (0, 0, 1, 0);
  case 131:
    return tl_list_sum (0, 0);
  case 128:
    return tl_list_sum (1, 0);
  case 130:
    return tl_list_sum (0, 1);
  case 129:
    return tl_list_sum (1, 1);
  case 137:
    return tl_list_sorted (0, 0);
  case 134:
    return tl_list_sorted (0, 1);
  case 136:
    return tl_list_sorted (1, 0);
  case 135:
    return tl_list_sorted (1, 1);
  case 177:
    return tl_datedistr ();
  default:
    tl_fetch_set_error_format (TL_ERROR_UNKNOWN_FUNCTION_ID, "Unknown op %08x", op);
    return 0;
  }
}
