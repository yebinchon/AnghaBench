#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct metafile {int data; int /*<<< orphan*/ * aio; } ;
struct TYPE_2__ {int user_id; int offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int,long long,long,int /*<<< orphan*/ *,struct metafile*) ; 
 int /*<<< orphan*/  ct_metafile_aio ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  idx_fd ; 
 int index_large_data_offset ; 
 struct metafile* large_metafiles ; 
 TYPE_1__* large_users ; 
 int large_users_number ; 
 int FUNC7 (long) ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 

__attribute__((used)) static void FUNC8 (int pos) {
  FUNC1 ();
  //WaitAio = NULL;

  FUNC2 (0 <= pos && pos < large_users_number);
  FUNC2 (large_metafiles[pos].data);

  struct metafile *meta = &large_metafiles[pos];
  int user_id = large_users[pos].user_id;
  long data_len = sizeof (long long) * (large_users[pos + 1].offset - large_users[pos].offset);
  long long idx_offset = index_large_data_offset + sizeof (long long) * (long long)large_users[pos].offset;

  if (verbosity >= 2) {
    FUNC5 (stderr, "loading metafile %d for user %d (%ld bytes at position %lld) in aio mode\n", pos, user_id, data_len, idx_offset);
  }

  if (meta->aio != NULL) {
    FUNC3 (meta->aio);
    if (meta->aio != NULL) {
      //WaitAio = meta->aio;
      FUNC0 (meta->aio);
      return;
    }

    if (meta->data) {
      return;
    } else {
      FUNC5 (stderr, "Previous AIO query failed at %p, scheduling a new one\n", meta);
      while (!(meta->data = FUNC7 (data_len))) {
        FUNC2 (FUNC6 ());
      }
    }
  } else {
    if (verbosity >= 4) {
      FUNC5 (stderr, "No previous aio found for this metafile\n");
    }
  }

  if (verbosity >= 4) {
    FUNC5 (stderr, "AIO query creating...\n");
  }
  FUNC2 (meta->data);
  meta->aio = FUNC4 (idx_fd, meta->data, idx_offset, data_len, &ct_metafile_aio, meta);
  if (verbosity >= 4) {
    FUNC5 (stderr, "AIO query created\n");
  }
  FUNC2 (meta->aio != NULL);
  //WaitAio = meta->aio;
  FUNC0 (meta->aio);

  return;
}