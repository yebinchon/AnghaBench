
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_list_entry_get_text {int object_id; int list_id; } ;
struct tl_act_extra {scalar_t__ extra; } ;


 int* R ;
 int TL_MAYBE_FALSE ;
 int TL_MAYBE_TRUE ;
 int assert (int ) ;
 int fetch_list_entry (int ,int ,int*) ;
 int tl_store_int (int ) ;
 int tl_store_string (char*,int) ;

int tl_do_list_entry_get_text (struct tl_act_extra *extra) {
  struct tl_list_entry_get_text *e = (void *)(extra->extra);
  int res = fetch_list_entry (e->list_id, e->object_id, R);
  if (res == -2) { return -2; }
  if (res < 0) {
    tl_store_int (TL_MAYBE_FALSE);
    return 0;
  }
  tl_store_int (TL_MAYBE_TRUE);
  int text_len = R[12];
  char **text = (char **)(R + 10);
  assert (text || !text_len);
  tl_store_string (text ? *text : 0, text_len);
  return 0;
}
