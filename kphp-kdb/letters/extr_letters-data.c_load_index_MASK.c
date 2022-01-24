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
typedef  int /*<<< orphan*/  index_header ;
struct TYPE_5__ {scalar_t__ magic; TYPE_1__* data; int /*<<< orphan*/  created_at; } ;
struct TYPE_4__ {scalar_t__ drive_old_mx; scalar_t__ drive_r; scalar_t__ drive_l; } ;

/* Variables and functions */
 scalar_t__ LETTERS_INDEX_MAGIC ; 
 int MAX_PRIORITY ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * fd ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_2__ header ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int verbosity ; 

int FUNC7 (char *index_name) {
  if (index_name == NULL || FUNC2 (0, index_name, -1) < 0) {
    header.magic = LETTERS_INDEX_MAGIC;
    header.created_at = FUNC6 (NULL);

    int i;
    for (i = 0; i < MAX_PRIORITY; i++) {
      header.data[i].drive_l = header.data[i].drive_r = header.data[i].drive_old_mx = 0;
    }
    return 0;
  }

  FUNC0 (FUNC4 (fd[0], 0, SEEK_SET) == 0);

  int size = sizeof (index_header);
  int r = FUNC5 (fd[0], &header, size);
  if (r != size) {
    FUNC3 (stderr, "error reading header from index file: read %d bytes instead of %d: %m\n", r, size);
  }
  FUNC0 (r == size);

  if (header.magic != LETTERS_INDEX_MAGIC) {
    FUNC3 (stderr, "bad letters index file header\n");
    FUNC0 (0);
  }

  if (verbosity > 1) {
    FUNC3 (stderr, "header loaded\n");
  }

  FUNC1 (0);
  return 1;
}