#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int next; int y; long long value; } ;
struct TYPE_4__ {int offset; } ;

/* Variables and functions */
 scalar_t__ ALLOW_OLD_INDEX_MODE ; 
 int NIL_BOOKMARK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,TYPE_1__*,int) ; 
 TYPE_2__* bookmarks ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int) ; 
 scalar_t__ index_mode ; 
 int FUNC3 (int) ; 
 TYPE_1__* new_users ; 
 int new_users_number ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 

int FUNC5 (int user_id, long long value, int y, int write) {
  if (index_mode > ALLOW_OLD_INDEX_MODE) {
    int t = FUNC4 ();
    FUNC0 (write && (t & 0xc0000000) == 0xc0000000);	// won't work in BOOKMARK_MALLOC mode
    bookmarks[t].next = user_id;
    bookmarks[t].y = (t << 1) + (y & 1);
    bookmarks[t].value = value;
    return 1;
  }
  int t = FUNC1 (user_id, new_users, new_users_number);
  if (t < 0) {
    if (!write) {
      return 0;
    }
    t = FUNC3 (user_id);
    FUNC0 (t == FUNC1 (user_id, new_users, new_users_number));
    if (verbosity >= 4) {
      FUNC2 (stderr, "Inserted user %d (total %d new users)\n", user_id, new_users_number);
    }
  }
  int x = new_users[t].offset;
  while (1) {
    int x1 = bookmarks[x].next;
    if (x1 == NIL_BOOKMARK || bookmarks[x1].value > value) {
      if (!write) {
        return 0;
      }
      int t = FUNC4 ();
      bookmarks[t].next = x1;
      bookmarks[t].value = value;
      bookmarks[t].y = y;
      bookmarks[x].next = t;
      break;
    }
    if (bookmarks[x1].value == value) {
      if (!write) {
        return bookmarks[x1].y == y;
      }
      if (y != bookmarks[x1].y) {
        bookmarks[x1].y = y;
      }
      break;
    }
    x = x1;
  }
  return 1;
}