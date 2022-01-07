
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_search_item_add_tags {long long obj_id; char* text; } ;


 scalar_t__ LEV_SEARCH_ITEM_ADD_TAGS ;
 int add_item_tags (char*,int,long long) ;
 struct lev_search_item_add_tags* alloc_log_event (scalar_t__,int,int ) ;
 int assert (int) ;
 int fits (long long) ;

int do_add_item_tags (const char *const text, int len, long long item_id) {
  char *q;
  int i;
  if (len >= 256 || len < 0 || !fits (item_id)) {
    return 0;
  }
  assert (len < 256);
  struct lev_search_item_add_tags *E = alloc_log_event (LEV_SEARCH_ITEM_ADD_TAGS + len, 13+len, 0);
  E->obj_id = item_id;
  q = E->text;
  i = 0;
  while (i < len) {
    if (text[i] == 0x1f) {
      do {
        *q++ = text[i++];
      } while (i < len && (unsigned char) text[i] >= 0x40);
    } else if ((unsigned char) text[i] < ' ' && text[i] != 9) {
      *q++ = ' ';
      i++;
    } else {
      *q++ = text[i++];
    }
  }
  *q = 0;
  return add_item_tags (q - len, len, item_id);
}
