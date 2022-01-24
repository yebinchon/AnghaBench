#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_8__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int user_id; TYPE_3__* mf; struct file_user_list_entry* dir_entry; } ;
typedef  TYPE_2__ user_t ;
struct file_user_list_entry_search_history {int user_history_min_ts; int user_history_max_ts; } ;
struct file_user_list_entry_search {int user_search_size; } ;
struct file_user_list_entry {int user_last_local_id; int /*<<< orphan*/  user_data_offset; } ;
struct file_user_header {scalar_t__ magic; int user_first_local_id; int user_last_local_id; int user_id; int sublists_num; int peers_offset; int peers_num; int sublists_offset; int legacy_list_offset; int directory_offset; int data_offset; int extra_offset; int total_bytes; } ;
struct file_message_extras {int dummy; } ;
struct connection {int dummy; } ;
struct aio_connection {scalar_t__ basic_type; scalar_t__ extra; } ;
struct TYPE_11__ {scalar_t__ mf_type; int len; int data; struct aio_connection* aio; TYPE_1__* next; TYPE_1__* prev; TYPE_2__* user; } ;
typedef  TYPE_3__ core_mf_t ;
struct TYPE_13__ {int sublists_num; } ;
struct TYPE_12__ {scalar_t__ data; } ;
struct TYPE_9__ {struct TYPE_9__* next; struct TYPE_9__* prev; } ;

/* Variables and functions */
 scalar_t__ FILE_USER_MAGIC ; 
 TYPE_8__ Header ; 
 scalar_t__ MF_USER ; 
 int /*<<< orphan*/  active_aio_queries ; 
 int /*<<< orphan*/  aio_crc_errors ; 
 int /*<<< orphan*/  aio_read_errors ; 
 int /*<<< orphan*/  allocated_metafile_bytes ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 unsigned int FUNC2 (int,int) ; 
 scalar_t__ ct_aio ; 
 int cur_user_metafile_bytes ; 
 int /*<<< orphan*/  cur_user_metafiles ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int idx_crc_enabled ; 
 scalar_t__ idx_persistent_history_enabled ; 
 scalar_t__ idx_search_enabled ; 
 int metafile_crc_check_size_threshold ; 
 int /*<<< orphan*/  stderr ; 
 int tot_user_metafile_bytes ; 
 int /*<<< orphan*/  tot_user_metafiles ; 
 TYPE_4__* FUNC5 (TYPE_3__*) ; 
 scalar_t__ verbosity ; 

int FUNC6 (struct connection *c, int read_bytes) {
  if (verbosity > 0) {
    FUNC3 (stderr, "onload_user_metafile(%d,%d)\n", c, read_bytes);
  }
  struct aio_connection *a = (struct aio_connection *)c;
  core_mf_t *M = (core_mf_t *) a->extra;
  user_t *U = M->user;

  FUNC0 (a->basic_type == ct_aio);
  FUNC0 (M->mf_type == MF_USER);
  FUNC0 (U->mf == M);
  FUNC0 (M->aio == a);

  struct file_user_list_entry *D = U->dir_entry;
  struct file_user_header *H;

  unsigned data_crc32, disk_crc32;
  if (idx_crc_enabled && read_bytes == M->len && read_bytes < metafile_crc_check_size_threshold) {
    FUNC0 (read_bytes >= 4);
    disk_crc32 = *((unsigned *) (M->data + read_bytes - 4));
    data_crc32 = FUNC2 (M->data, read_bytes - 4);
  } else {
    disk_crc32 = data_crc32 = 0;
  }

  if (read_bytes < M->len || disk_crc32 != data_crc32) {
    aio_read_errors++;
    if (verbosity >= 0) {
      FUNC3 (stderr, "ERROR reading user %d data from index at position %d [pending aio queries: %d]: read %d bytes out of %d: %m\n", U->user_id, D->user_data_offset, active_aio_queries, read_bytes, M->len);
    }
    if (disk_crc32 != data_crc32) {
      aio_crc_errors++;
      if (verbosity >= 0) {
	FUNC3 (stderr, "CRC mismatch: expected %08x, found %08x\n", disk_crc32, data_crc32);
      }
      FUNC0 (disk_crc32 == data_crc32);
    }

    allocated_metafile_bytes -= M->len;
    M->next->prev = M->prev;
    M->prev->next = M->next;
    M->prev = M->next = 0;
    M->aio = 0;

    FUNC4 (M);
    U->mf = 0;

    return 0;
  }

  M->aio = 0;

  H = (struct file_user_header *) (FUNC5 (M)->data);

  if (verbosity > 0 || H->magic != FILE_USER_MAGIC) {
    FUNC3 (stderr, "*** Read user %d data from index at position %d: read %d bytes at address %p, magic %08lx\n", U->user_id, D->user_data_offset, read_bytes, H, H->magic);
  }

  FUNC0 (H->magic == FILE_USER_MAGIC);
  FUNC0 (H->user_first_local_id >= 1 && H->user_last_local_id >= H->user_first_local_id - 1);
  FUNC0 (H->user_last_local_id == D->user_last_local_id);
  int r = H->user_last_local_id - H->user_first_local_id + 1;
  FUNC0 (H->user_id == U->user_id);
  FUNC0 (H->sublists_num == Header.sublists_num);
  FUNC0 (H->peers_offset == sizeof (struct file_user_header));
  FUNC0 ((unsigned) H->peers_num <= (1 << 24));
  FUNC0 (H->sublists_offset >= H->peers_offset + (H->peers_num ? H->peers_num * 8 + 4 : 0));
  FUNC0 (H->legacy_list_offset >= H->sublists_offset + (H->sublists_num ? H->sublists_num * 8 + 4 : 0));
  FUNC0 (H->directory_offset >= H->legacy_list_offset);
  FUNC0 (H->data_offset == H->directory_offset + 4*(r+1));
  FUNC0 (H->extra_offset >= H->data_offset);

  int search_bytes = (idx_search_enabled || idx_persistent_history_enabled) ? ((struct file_user_list_entry_search *) D)->user_search_size : 0;
  if (search_bytes && idx_crc_enabled) {
    search_bytes += 4;
  }

  int min_ts = 1, max_ts = 0, history_bytes = 0;
  if (idx_persistent_history_enabled) {
    min_ts = ((struct file_user_list_entry_search_history *) D)->user_history_min_ts;
    max_ts = ((struct file_user_list_entry_search_history *) D)->user_history_max_ts;
    if (max_ts >= min_ts) {
      history_bytes = (max_ts - min_ts + 1) * 8 + 16;
    }
  }

  FUNC0 (H->total_bytes == H->extra_offset + search_bytes + history_bytes + r * sizeof (struct file_message_extras) + 4 * idx_crc_enabled);
  FUNC0 (H->extra_offset == M->len);

  cur_user_metafile_bytes += M->len;
  tot_user_metafile_bytes += M->len;
  cur_user_metafiles++;
  tot_user_metafiles++;

  FUNC1 (U);

  return 1;
}