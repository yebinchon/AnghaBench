#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_7__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct metafile {int dummy; } ;
struct bookmark_user {int dummy; } ;
struct TYPE_8__ {int small_users; int large_users; int /*<<< orphan*/  large_data_offset; } ;
typedef  TYPE_1__ index_header ;
struct TYPE_10__ {int next; int prev; } ;
struct TYPE_9__ {scalar_t__ offset; scalar_t__ user_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  idx_fd ; 
 int /*<<< orphan*/  index_large_data_offset ; 
 TYPE_7__* large_metafiles ; 
 TYPE_2__* large_users ; 
 int large_users_number ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 TYPE_2__* small_bookmarks ; 
 TYPE_2__* small_users ; 
 int small_users_number ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ verbosity ; 
 void* FUNC3 (int) ; 

void FUNC4 (index_header *header) {
  int i;
  FUNC0 (sizeof (struct bookmark_user) == 8);
  index_large_data_offset = header->large_data_offset;

  small_users_number = header->small_users;
  small_users = FUNC3 (sizeof (struct bookmark_user) * (small_users_number + 1));
  FUNC2 (idx_fd, small_users, sizeof (struct bookmark_user) * (small_users_number + 1));

  for (i = 0; i < small_users_number; i++) {
    FUNC0 (small_users[i+1].offset > small_users[i].offset);
    FUNC0 (small_users[i+1].user_id > small_users[i].user_id || i == small_users_number - 1);
  }
  FUNC0 (!small_users[0].offset);

  large_users_number = header->large_users;
  large_users = FUNC3 (sizeof (struct bookmark_user) * (large_users_number + 1));
  FUNC2 (idx_fd, large_users, sizeof (struct bookmark_user) * (large_users_number + 1));

  for (i = 0; i < large_users_number; i++) {
    FUNC0 (large_users[i+1].offset > large_users[i].offset);
    FUNC0 (large_users[i+1].user_id > large_users[i].user_id || i == large_users_number - 1);
  }
  FUNC0 (!large_users[0].offset);
  // TODO: check boundary values for small/large_users[0].offset and large_users[large_users_number].offset

  small_bookmarks = FUNC3 (small_users[small_users_number].offset * sizeof (long long));
  FUNC2 (idx_fd, small_bookmarks, small_users[small_users_number].offset * sizeof (long long));

  large_metafiles = FUNC3 (sizeof (struct metafile) * (large_users_number + 1));
  if (verbosity) {
    FUNC1 (stderr, "small_users = %d, large_users = %d\n", small_users_number, large_users_number);
  }
  large_metafiles[large_users_number].next = large_users_number;
  large_metafiles[large_users_number].prev = large_users_number;
}