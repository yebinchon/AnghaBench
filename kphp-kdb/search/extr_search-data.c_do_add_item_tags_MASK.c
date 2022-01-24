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
struct lev_search_item_add_tags {long long obj_id; char* text; } ;

/* Variables and functions */
 scalar_t__ LEV_SEARCH_ITEM_ADD_TAGS ; 
 int FUNC0 (char*,int,long long) ; 
 struct lev_search_item_add_tags* FUNC1 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (long long) ; 

int FUNC4 (const char *const text, int len, long long item_id) {
  char *q;
  int i;
  if (len >= 256 || len < 0 || !FUNC3 (item_id)) {
    return 0;
  }
  FUNC2 (len < 256);
  struct lev_search_item_add_tags *E = FUNC1 (LEV_SEARCH_ITEM_ADD_TAGS + len, 13+len, 0);
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
  return FUNC0 (q - len, len, item_id);
}