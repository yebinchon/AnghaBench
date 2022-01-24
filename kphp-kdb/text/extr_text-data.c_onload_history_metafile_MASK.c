#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int user_id; TYPE_3__* history_mf; scalar_t__ dir_entry; } ;
typedef  TYPE_2__ user_t ;
struct file_user_list_entry_search_history {int user_history_max_ts; int user_history_min_ts; int /*<<< orphan*/  user_data_size; int /*<<< orphan*/  user_data_offset; } ;
struct file_history_header {scalar_t__ magic; int history_min_ts; scalar_t__ history_max_ts; } ;
struct connection {int dummy; } ;
struct aio_connection {scalar_t__ basic_type; scalar_t__ extra; } ;
struct TYPE_8__ {scalar_t__ mf_type; int len; int data; struct aio_connection* aio; TYPE_1__* next; TYPE_1__* prev; TYPE_2__* user; } ;
typedef  TYPE_3__ core_mf_t ;
struct TYPE_6__ {struct TYPE_6__* next; struct TYPE_6__* prev; } ;

/* Variables and functions */
 scalar_t__ FILE_USER_HISTORY_MAGIC ; 
 scalar_t__ MF_HISTORY ; 
 int /*<<< orphan*/  active_aio_queries ; 
 int /*<<< orphan*/  aio_crc_errors ; 
 int /*<<< orphan*/  aio_read_errors ; 
 int /*<<< orphan*/  allocated_history_metafile_bytes ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FUNC1 (int,int) ; 
 scalar_t__ ct_aio ; 
 int cur_history_metafile_bytes ; 
 int /*<<< orphan*/  cur_history_metafiles ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int idx_persistent_history_enabled ; 
 int metafile_crc_check_size_threshold ; 
 int /*<<< orphan*/  stderr ; 
 int tot_history_metafile_bytes ; 
 int /*<<< orphan*/  tot_history_metafiles ; 
 scalar_t__ verbosity ; 

int FUNC5 (struct connection *c, int read_bytes) {
  if (verbosity > 0) {
    FUNC2 (stderr, "onload_history_metafile(%d,%d)\n", c, read_bytes);
  }
  FUNC0 (idx_persistent_history_enabled);

  struct aio_connection *a = (struct aio_connection *)c;
  core_mf_t *M = (core_mf_t *) a->extra;
  user_t *U = M->user;

  FUNC0 (a->basic_type == ct_aio);
  FUNC0 (M->mf_type == MF_HISTORY);
  FUNC0 (U->history_mf == M);
  FUNC0 (M->aio == a);

  struct file_user_list_entry_search_history *D = (struct file_user_list_entry_search_history *) U->dir_entry;

  unsigned data_crc32, disk_crc32;
  if (read_bytes == M->len && read_bytes < metafile_crc_check_size_threshold) {
    FUNC0 (read_bytes >= 4);
    disk_crc32 = *((unsigned *) (M->data + read_bytes - 4));
    data_crc32 = FUNC1 (M->data, read_bytes - 4);
  } else {
    disk_crc32 = data_crc32 = 0;
  }

  int history_metafile_len = (D->user_history_max_ts - D->user_history_min_ts + 1) * 8 + 12;

  FUNC0 (M->len == history_metafile_len + 4);
  if (read_bytes != M->len || disk_crc32 != data_crc32) {
    aio_read_errors++;
    if (verbosity >= 0) {
      FUNC2 (stderr, "ERROR reading user %d history data from index at position %d [pending aio queries: %d]: read %d bytes out of %d: %m\n", U->user_id, D->user_data_offset + D->user_data_size, active_aio_queries, read_bytes, M->len);
    }
    if (disk_crc32 != data_crc32) {
      aio_crc_errors++;
      if (verbosity >= 0) {
	FUNC2 (stderr, "CRC mismatch: expected %08x, found %08x\n", disk_crc32, data_crc32);
      }
      FUNC0 (disk_crc32 == data_crc32);
    }

    allocated_history_metafile_bytes -= M->len;
    M->next->prev = M->prev;
    M->prev->next = M->next;
    M->prev = M->next = 0;
    M->aio = 0;

    FUNC3 (M);
    U->history_mf = 0;

    return 0;
  }

  if (verbosity > 0) {
    FUNC2 (stderr, "*** Read user %d history data from index at position %d: read %d bytes\n", U->user_id, D->user_data_offset + D->user_data_size, read_bytes);
  }

  M->aio = 0;

  struct file_history_header *H = (struct file_history_header *) FUNC4 (U);

  FUNC0 (H->magic == FILE_USER_HISTORY_MAGIC);
  FUNC0 (H->history_min_ts == D->user_history_min_ts);
  FUNC0 (H->history_max_ts == D->user_history_max_ts);
  FUNC0 (H->history_min_ts > 0 && H->history_max_ts >= H->history_min_ts - 1);

  cur_history_metafile_bytes += read_bytes;
  tot_history_metafile_bytes += read_bytes;
  cur_history_metafiles++;
  tot_history_metafiles++;

  if (U->user_id == 92226304) {
    // write (1, M->data, M->len);
    // exit (0);
  }

  return 1;
}