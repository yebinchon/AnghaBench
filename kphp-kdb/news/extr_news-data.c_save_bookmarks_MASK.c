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
struct bookmark_user {int dummy; } ;
struct TYPE_4__ {int small_data_offset; int large_data_offset; int small_users; int large_users; } ;
typedef  TYPE_1__ index_header ;
struct TYPE_5__ {int value; } ;

/* Variables and functions */
 scalar_t__ ALLOW_OLD_INDEX_MODE ; 
 int ANS_BUFF_SIZE ; 
 int ANS_BUFF_SIZE_SMALLER ; 
 int MAX_SMALL_BOOKMARK ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  ans_buff ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ bookmarks ; 
 int bookmarks_ptr ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC6 (int,int) ; 
 int FUNC7 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ index_mode ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int) ; 
 int /*<<< orphan*/  stderr ; 
 TYPE_2__ user_iterator ; 
 int verbosity ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 

void FUNC12 (index_header *header) {
  FUNC3 ();
  int small_offset = 0;
  int large_offset = 0;
  int small_users_n = 0;
  int large_users_n = 0;
  if (index_mode > ALLOW_OLD_INDEX_MODE && bookmarks_ptr) {
    FUNC1 (bookmarks_ptr < 0 && bookmarks);
    if (verbosity > 0) {
      FUNC5 (stderr, "sorting %d bookmarks...\n", -bookmarks_ptr);
    }
    FUNC9 (bookmarks + bookmarks_ptr, - bookmarks_ptr - 1);
    if (verbosity > 0) {
      FUNC5 (stderr, "building bookmark lists...\n");
    }
    FUNC2 ();
  }
  if (verbosity > 0) {
    FUNC5 (stderr, "writing bookmark lists...\n");
  }
  FUNC8 ();
  int total_users = 0;
  while (FUNC0 () >= 0) {
    int user_id = user_iterator.value;
    int n = FUNC6 (user_id, -1);
    FUNC1 (n >= 0);
    total_users++;
    if (verbosity >= 4) {
      FUNC5 (stderr, "user #%d: %d, n = %d, max_small = %d, small_cnt = %d\n", total_users, user_id, n, MAX_SMALL_BOOKMARK, small_users_n);
    }
    if (n == 0) {
      continue;
    }
    FUNC1 (n > 0);
    if (n <= MAX_SMALL_BOOKMARK) {
      FUNC10 (user_id);
      FUNC10 (small_offset);
      small_offset += n;
      FUNC1 (small_offset >= 0);
      small_users_n ++;
    }
  }
  FUNC10 (0);
  FUNC10 (small_offset);
  FUNC8 ();
  while (FUNC0 () >= 0) {
    int user_id = user_iterator.value;
    int n = FUNC6 (user_id, -1);
    FUNC1 (n >= 0);
    if (n == 0) {
      continue;
    }
    FUNC1 (n > 0);
    if (n > MAX_SMALL_BOOKMARK) {
      if (n > ANS_BUFF_SIZE) {
        n = ANS_BUFF_SIZE_SMALLER;
      }
      FUNC10 (user_id);
      FUNC10 (large_offset);
      large_offset += n;
      FUNC1 (large_offset >= 0);
      large_users_n ++;
    }
  }
  FUNC10 (0);
  FUNC10 (large_offset);
  small_offset = 0;
  FUNC8 ();
  while (FUNC0 () >= 0) {
    int user_id = user_iterator.value;
    int n = FUNC6 (user_id, -1);
    FUNC1 (n >= 0);
    if (n == 0) {
      continue;
    }
    FUNC1 (n > 0);
    if (n <= MAX_SMALL_BOOKMARK) {
      FUNC1 (n == FUNC7 (user_id, ans_buff, ANS_BUFF_SIZE));
      FUNC1 (n <= ANS_BUFF_SIZE);
      small_offset += n;
      FUNC11 (ans_buff, n * sizeof (long long));
    }
  }
  large_offset = 0;
  FUNC8 ();
  while (FUNC0 () >= 0) {
    int user_id = user_iterator.value;
    int n = FUNC6 (user_id, -1);
    FUNC1 (n >= 0);
    if (n == 0) {
      continue;
    }
    FUNC1 (n > 0);
    if (n > MAX_SMALL_BOOKMARK) {
      if (n > ANS_BUFF_SIZE) {
        FUNC5 (stderr, "user %d: has %d bookmarks, leaving only %d in index\n", user_id, n, ANS_BUFF_SIZE_SMALLER);
        n = ANS_BUFF_SIZE_SMALLER;
      }
      FUNC1 (n == FUNC7 (user_id, ans_buff, n));
      FUNC1 (n <= ANS_BUFF_SIZE);
      large_offset += n;
      FUNC11 (ans_buff, n * sizeof (long long));
    }
  }
  FUNC4 ();

  header->small_data_offset = (small_users_n + 1) * sizeof (struct bookmark_user) + (large_users_n + 1) * sizeof (struct bookmark_user);
  header->large_data_offset = header->small_data_offset + sizeof (long long) * small_offset;
  header->small_users = small_users_n;
  header->large_users = large_users_n;

  if (verbosity) {
    FUNC5 (stderr, "small_users = %d, large_users = %d\n", small_users_n, large_users_n);
  }
}