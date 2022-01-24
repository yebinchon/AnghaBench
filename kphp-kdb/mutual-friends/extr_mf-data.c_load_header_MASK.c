#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  user_index_data ;
typedef  int /*<<< orphan*/  index_header ;
struct TYPE_5__ {int user_cnt; int log_split_min; int log_split_max; int log_split_mod; struct TYPE_5__* user_index; int /*<<< orphan*/  created_at; scalar_t__ log_pos1_crc32; scalar_t__ log_pos0_crc32; scalar_t__ log_timestamp; scalar_t__ log_pos1; scalar_t__ log_pos0; } ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * fd ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (TYPE_1__*) ; 
 TYPE_1__ header ; 
 int header_size ; 
 int log_split_max ; 
 int log_split_min ; 
 int log_split_mod ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_1__* FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int verbosity ; 

int FUNC8 (char *indexname) {
  if (FUNC4 (0, indexname, -1) == -1) {

    header.user_cnt = 0;
    header.user_index = NULL;

    header.log_pos0 = 0;
    header.log_pos1 = 0;
    header.log_timestamp = 0;
    header.log_split_min = 0;
    header.log_split_max = 1000000000;
    header.log_split_mod = 1;
    header.log_pos0_crc32 = 0;
    header.log_pos1_crc32 = 0;

    header.created_at = FUNC7 (NULL);
    header_size = sizeof (index_header);

    return 0;
  }

  // read header
  FUNC0 (FUNC3 (fd[0], 0, SEEK_SET) == 0);

  int size = sizeof (index_header) - sizeof (long);
  int r = FUNC6 (fd[0], &header, size);
  if (r != size) {
    FUNC1 (stderr, "error reading header from index file: read %d bytes instead of %d at position 0: %m\n", r, size);
  }
  FUNC0 (r == size);

  size = sizeof (user_index_data) * (header.user_cnt + 1);
  header.user_index = FUNC5 (size);

  r = FUNC6 (fd[0], header.user_index, size);
  if (r != size) {
    FUNC1 (stderr, "error reading header from index file: read %d bytes instead of %d: %m\n", r, size);
  }
  FUNC0 (r == size);

  FUNC0 (header.log_split_max);
  log_split_min = header.log_split_min;
  log_split_max = header.log_split_max;
  log_split_mod = header.log_split_mod;

  header_size = FUNC2 (&header) - sizeof (long);
  if (verbosity > 1) {
    FUNC1 (stderr, "header loaded %d %d %d\n", log_split_min, log_split_max, log_split_mod);
    FUNC1 (stderr, "ok\n");
  }
  return 1;
}