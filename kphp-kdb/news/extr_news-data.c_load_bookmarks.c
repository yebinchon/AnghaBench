
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct metafile {int dummy; } ;
struct bookmark_user {int dummy; } ;
struct TYPE_8__ {int small_users; int large_users; int large_data_offset; } ;
typedef TYPE_1__ index_header ;
struct TYPE_10__ {int next; int prev; } ;
struct TYPE_9__ {scalar_t__ offset; scalar_t__ user_id; } ;


 int assert (int) ;
 int fprintf (int ,char*,int,int) ;
 int idx_fd ;
 int index_large_data_offset ;
 TYPE_7__* large_metafiles ;
 TYPE_2__* large_users ;
 int large_users_number ;
 int read (int ,TYPE_2__*,int) ;
 TYPE_2__* small_bookmarks ;
 TYPE_2__* small_users ;
 int small_users_number ;
 int stderr ;
 scalar_t__ verbosity ;
 void* zmalloc (int) ;

void load_bookmarks (index_header *header) {
  int i;
  assert (sizeof (struct bookmark_user) == 8);
  index_large_data_offset = header->large_data_offset;

  small_users_number = header->small_users;
  small_users = zmalloc (sizeof (struct bookmark_user) * (small_users_number + 1));
  read (idx_fd, small_users, sizeof (struct bookmark_user) * (small_users_number + 1));

  for (i = 0; i < small_users_number; i++) {
    assert (small_users[i+1].offset > small_users[i].offset);
    assert (small_users[i+1].user_id > small_users[i].user_id || i == small_users_number - 1);
  }
  assert (!small_users[0].offset);

  large_users_number = header->large_users;
  large_users = zmalloc (sizeof (struct bookmark_user) * (large_users_number + 1));
  read (idx_fd, large_users, sizeof (struct bookmark_user) * (large_users_number + 1));

  for (i = 0; i < large_users_number; i++) {
    assert (large_users[i+1].offset > large_users[i].offset);
    assert (large_users[i+1].user_id > large_users[i].user_id || i == large_users_number - 1);
  }
  assert (!large_users[0].offset);


  small_bookmarks = zmalloc (small_users[small_users_number].offset * sizeof (long long));
  read (idx_fd, small_bookmarks, small_users[small_users_number].offset * sizeof (long long));

  large_metafiles = zmalloc (sizeof (struct metafile) * (large_users_number + 1));
  if (verbosity) {
    fprintf (stderr, "small_users = %d, large_users = %d\n", small_users_number, large_users_number);
  }
  large_metafiles[large_users_number].next = large_users_number;
  large_metafiles[large_users_number].prev = large_users_number;
}
