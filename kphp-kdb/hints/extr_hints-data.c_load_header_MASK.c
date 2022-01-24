#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  user_index_data ;
typedef  TYPE_1__* kfs_file_handle_t ;
typedef  int /*<<< orphan*/  index_header ;
struct TYPE_9__ {int magic; int user_cnt; int log_split_min; int log_split_max; int log_split_mod; int perf_hash; int nohints; scalar_t__ rating_num; int fading; unsigned int user_index_crc32; unsigned int header_crc32; struct TYPE_9__* user_index; scalar_t__ has_crc32; int /*<<< orphan*/  created_at; scalar_t__ log_pos1_crc32; scalar_t__ log_pos0_crc32; scalar_t__ log_timestamp; scalar_t__ log_pos1; scalar_t__ log_pos0; } ;
struct TYPE_8__ {int offset; int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int HINTS_INDEX_MAGIC ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int,unsigned int*,int) ; 
 TYPE_2__* FUNC2 (int) ; 
 int fading ; 
 int /*<<< orphan*/ * fd ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC4 (TYPE_2__*) ; 
 TYPE_2__ header ; 
 int header_size ; 
 int log_split_max ; 
 int log_split_min ; 
 int log_split_mod ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ rating_num ; 
 int FUNC6 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int verbosity ; 

int FUNC8 (kfs_file_handle_t Index) {
  if (Index == NULL) {
    header.magic = HINTS_INDEX_MAGIC;

    header.user_cnt = 0;
    header.user_index = NULL;

    header.log_pos0 = 0;
    header.log_pos1 = 0;
    header.log_timestamp = 0;
    header.log_split_min = 0;
    header.log_split_max = 1;
    header.log_split_mod = 1;
    header.log_pos0_crc32 = 0;
    header.log_pos1_crc32 = 0;
#ifdef HINTS
    header.perf_hash = 0;
    header.nohints = 0;
#else
    header.perf_hash = -1;
    header.nohints = 1;
#endif

    header.created_at = FUNC7 (NULL);
    header_size = sizeof (index_header);

    return 0;
  }

  fd[0] = Index->fd;
  int offset = Index->offset;
  //read header
  FUNC0 (FUNC5 (fd[0], offset, SEEK_SET) == offset);

  int size = sizeof (index_header) - sizeof (long);
  int r = FUNC6 (fd[0], &header, size);
  if (r < size) {
    FUNC3 (stderr, "error reading header from index file: read %d bytes instead of %d at position 0: %m\n", r, size);
    FUNC0 (r == size);
    return 0;
  }

  if (header.magic != HINTS_INDEX_MAGIC) {
    FUNC3 (stderr, "bad hints index file header\n");
    FUNC3 (stderr, "magic = 0x%08x // offset = %d\n", header.magic, offset);
    FUNC0 (0);
  }

#ifdef HINTS
  assert (header.nohints == 0);
#else
  FUNC0 (header.nohints == 1);
  FUNC0 (header.perf_hash == -1);
#endif

  size = sizeof (user_index_data) * (header.user_cnt + 1);
  header.user_index = FUNC2 (size);
  if (header.rating_num) {
    FUNC0 (header.rating_num == rating_num);
  }
  FUNC0 (header.fading + fading == 1);

  r = FUNC6 (fd[0], header.user_index, size);
  if (r < size) {
    FUNC3 (stderr, "error reading header from index file: read %d bytes instead of %d: %m\n", r, size);
    FUNC0 (r == size);
    return 0;
  }

  if (header.has_crc32) {
    FUNC1 (header.user_index, size, &header.user_index_crc32, 1);
    header.user_index_crc32 = 0;
    unsigned int t = header.header_crc32;
    header.header_crc32 = 0;
    FUNC1 (&header, sizeof (index_header) - sizeof (long), &t, 1);
  }

  FUNC0 (header.log_split_max);
  log_split_min = header.log_split_min;
  log_split_max = header.log_split_max;
  log_split_mod = header.log_split_mod;

  header_size = FUNC4 (&header) - sizeof (long);
  if (verbosity > 1) {
    FUNC3 (stderr, "header loaded %d %d %d\n", log_split_min, log_split_max, log_split_mod);
    FUNC3 (stderr, "ok\n");
  }
  return 1;
}