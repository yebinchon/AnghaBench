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
struct lev_search_text_short_entry {int rate2; long long obj_id; char* text; } ;
struct lev_search_text_long_entry {int rate2; long long obj_id; int text_len; char* text; } ;
typedef  int /*<<< orphan*/  netbuffer_t ;

/* Variables and functions */
 scalar_t__ LEV_SEARCH_TEXT_LONG ; 
 scalar_t__ LEV_SEARCH_TEXT_SHORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 void* FUNC1 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (char*,int,long long,int,int) ; 
 int /*<<< orphan*/  FUNC4 (long long) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,int) ; 

int FUNC6 (netbuffer_t *Source, int len, long long item_id, int rate, int rate2) {
  char *q, *qe;
  int i;

  if (len >= 65536 || len < 0 || !FUNC4 (item_id)) {
    FUNC0 (Source, len);
    return 0;
  }

  if (len < 256) {
    struct lev_search_text_short_entry *LS = FUNC1 (LEV_SEARCH_TEXT_SHORT+len, 21+len, rate);
    LS->rate2 = rate2;
    LS->obj_id = item_id;
    q = LS->text;
  } else {
    struct lev_search_text_long_entry *LL = FUNC1 (LEV_SEARCH_TEXT_LONG, 23+len, rate);
    LL->rate2 = rate2;
    LL->obj_id = item_id;
    LL->text_len = len;
    q = LL->text;
  }

  i = FUNC5 (Source, q, len);
  FUNC2 (i == len);

  qe = q + i;

  while (q < qe) {
    if (*q == 0x1f) {
      do {
        q++;
      } while (q < qe && (unsigned char) *q >= 0x40);
    } else if ((unsigned char) *q < ' ' && *q != 9) {
      *q++ = ' ';
    } else {
      q++;
    }
  }
  *q = 0;
  return FUNC3 (q - len, len, item_id, rate, rate2);
}