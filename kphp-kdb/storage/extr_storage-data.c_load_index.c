
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int docs; int idx_docs; int index_size; int snapshot_size; struct storage_index_header* Idx_Pos; struct storage_index_header* Md5_Docs; struct storage_index_header* Md5_Pos; int md5_mode; int volume_id; int jump_log_crc32; int jump_log_pos; int log_split_mod; int log_split_max; int log_split_min; TYPE_3__* Snapshot; } ;
typedef TYPE_2__ volume_t ;
struct storage_index_header {scalar_t__ magic; int docs; unsigned int const crc32; int md5_mode; int volume_id; int log_pos1_crc32; int log_pos1; int log_split_mod; int log_split_max; int log_split_min; } ;
struct lev_crc32 {scalar_t__ magic; int docs; unsigned int const crc32; int md5_mode; int volume_id; int log_pos1_crc32; int log_pos1; int log_split_mod; int log_split_max; int log_split_min; } ;
typedef TYPE_3__* kfs_file_handle_t ;
struct TYPE_7__ {TYPE_1__* info; int fd; } ;
struct TYPE_5__ {int file_size; int filename; } ;


 scalar_t__ STORAGE_INDEX_MAGIC ;
 int bread (struct storage_index_header*,unsigned int const) ;
 int bytes_read ;
 int clearin () ;
 unsigned int idx_crc32_complement ;
 int idx_docs ;
 int idx_fd ;
 int index_size ;
 int kprintf (char*,...) ;
 scalar_t__ memcmp (struct storage_index_header*,struct storage_index_header*,int) ;
 int snapshot_size ;
 int tot_docs ;
 void* tszmalloc (unsigned int const) ;

int load_index (volume_t *V) {
  int i;
  kfs_file_handle_t Index = V->Snapshot;
  if (Index == ((void*)0)) {
    V->index_size = 0;

    V->jump_log_pos = 0;
    V->jump_log_crc32 = 0;
    V->docs = V->idx_docs = 0;
    return 0;
  }
  idx_fd = Index->fd;
  struct storage_index_header header;
  clearin ();
  bread (&header, sizeof (struct storage_index_header));
  if (header.magic != STORAGE_INDEX_MAGIC) {
    kprintf ("index file is not for storage\n");
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
    V->Md5_Docs = tszmalloc (sz_docs);
    bread (V->Md5_Docs, sz_docs);
    V->Md5_Pos = tszmalloc (sz_pos);
    bread (V->Md5_Pos, sz_pos);
    for (i = 1; i < header.docs; i++) {
      if (memcmp (&V->Md5_Docs[(i-1) << 4], &V->Md5_Docs[i << 4], 16) >= 0) {
        kprintf ("md5 table is corrupted in snapshot: %s\n", Index->info->filename);
        return -1;
      }
    }
  } else {
    const unsigned docs_sz = (header.docs + 1) << 3;
    V->Idx_Pos = tszmalloc (docs_sz);
    bread (V->Idx_Pos, docs_sz);
  }

  const unsigned c = ~idx_crc32_complement;
  struct lev_crc32 C;
  bread (&C, sizeof (struct lev_crc32));
  if (c != C.crc32) {
    kprintf ("crc32 not matched in snapshot: %s\n", Index->info->filename);
    return -2;
  }

  snapshot_size += V->snapshot_size = bytes_read;
  index_size += V->index_size = Index->info->file_size;
  idx_docs += V->idx_docs;
  tot_docs += V->idx_docs;
  return 0;
}
