#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int docs; int idx_docs; int /*<<< orphan*/  index_size; int /*<<< orphan*/  snapshot_size; struct storage_index_header* Idx_Pos; struct storage_index_header* Md5_Docs; struct storage_index_header* Md5_Pos; int /*<<< orphan*/  md5_mode; int /*<<< orphan*/  volume_id; int /*<<< orphan*/  jump_log_crc32; int /*<<< orphan*/  jump_log_pos; int /*<<< orphan*/  log_split_mod; int /*<<< orphan*/  log_split_max; int /*<<< orphan*/  log_split_min; TYPE_3__* Snapshot; } ;
typedef  TYPE_2__ volume_t ;
struct storage_index_header {scalar_t__ magic; int docs; unsigned int const crc32; int /*<<< orphan*/  md5_mode; int /*<<< orphan*/  volume_id; int /*<<< orphan*/  log_pos1_crc32; int /*<<< orphan*/  log_pos1; int /*<<< orphan*/  log_split_mod; int /*<<< orphan*/  log_split_max; int /*<<< orphan*/  log_split_min; } ;
struct lev_crc32 {scalar_t__ magic; int docs; unsigned int const crc32; int /*<<< orphan*/  md5_mode; int /*<<< orphan*/  volume_id; int /*<<< orphan*/  log_pos1_crc32; int /*<<< orphan*/  log_pos1; int /*<<< orphan*/  log_split_mod; int /*<<< orphan*/  log_split_max; int /*<<< orphan*/  log_split_min; } ;
typedef  TYPE_3__* kfs_file_handle_t ;
struct TYPE_7__ {TYPE_1__* info; int /*<<< orphan*/  fd; } ;
struct TYPE_5__ {int /*<<< orphan*/  file_size; int /*<<< orphan*/  filename; } ;

/* Variables and functions */
 scalar_t__ STORAGE_INDEX_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (struct storage_index_header*,unsigned int const) ; 
 int /*<<< orphan*/  bytes_read ; 
 int /*<<< orphan*/  FUNC1 () ; 
 unsigned int idx_crc32_complement ; 
 int idx_docs ; 
 int /*<<< orphan*/  idx_fd ; 
 int /*<<< orphan*/  index_size ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ FUNC3 (struct storage_index_header*,struct storage_index_header*,int) ; 
 int /*<<< orphan*/  snapshot_size ; 
 int tot_docs ; 
 void* FUNC4 (unsigned int const) ; 

int FUNC5 (volume_t *V) {
  int i;
  kfs_file_handle_t Index = V->Snapshot;
  if (Index == NULL) {
    V->index_size = 0;
    //jump_log_ts = 0;
    V->jump_log_pos = 0;
    V->jump_log_crc32 = 0;
    V->docs = V->idx_docs = 0;
    return 0;
  }
  idx_fd = Index->fd;
  struct storage_index_header header;
  FUNC1 ();
  FUNC0 (&header, sizeof (struct storage_index_header));
  if (header.magic != STORAGE_INDEX_MAGIC) {
    FUNC2 ("index file is not for storage\n");
    return -1;
  }

  V->log_split_min = header.log_split_min;
  V->log_split_max = header.log_split_max;
  V->log_split_mod = header.log_split_mod;

  V->index_size = Index->info->file_size;
  V->jump_log_pos = header.log_pos1;
  V->jump_log_crc32 = header.log_pos1_crc32;

  V->docs = V->idx_docs = header.docs;
  V->volume_id = header.volume_id;
  V->md5_mode = header.md5_mode;

  if (V->md5_mode) {
    const unsigned sz_docs = header.docs << 4;
    const unsigned sz_pos = sz_docs >> 1;
    V->Md5_Docs = FUNC4 (sz_docs);
    FUNC0 (V->Md5_Docs, sz_docs);
    V->Md5_Pos = FUNC4 (sz_pos);
    FUNC0 (V->Md5_Pos, sz_pos);
    for (i = 1; i < header.docs; i++) {
      if (FUNC3 (&V->Md5_Docs[(i-1) << 4], &V->Md5_Docs[i << 4], 16) >= 0) {
        FUNC2 ("md5 table is corrupted in snapshot: %s\n", Index->info->filename);
        return -1;
      }
    }
  } else {
    const unsigned docs_sz = (header.docs + 1) << 3;
    V->Idx_Pos = FUNC4 (docs_sz);
    FUNC0 (V->Idx_Pos, docs_sz);
  }

  const unsigned c = ~idx_crc32_complement;
  struct lev_crc32 C;
  FUNC0 (&C, sizeof (struct lev_crc32));
  if (c != C.crc32) {
    FUNC2 ("crc32 not matched in snapshot: %s\n", Index->info->filename);
    return -2;
  }

  snapshot_size += V->snapshot_size = bytes_read;
  index_size += V->index_size = Index->info->file_size;
  idx_docs += V->idx_docs;
  tot_docs += V->idx_docs;
  return 0;
}