
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct lev_crc32 {scalar_t__ type; int crc32; } ;
struct TYPE_7__ {int size; int filename; } ;
typedef TYPE_1__ file_t ;
typedef int C1 ;


 scalar_t__ LEV_CRC32 ;
 int STORAGE_LEV_START_SIZE ;
 int crc32_complement ;
 int crc32_partial (struct lev_crc32*,int,int ) ;
 int head_check (TYPE_1__*,TYPE_1__*) ;
 int kprintf (char*,...) ;
 scalar_t__ local_id ;
 scalar_t__ memcmp (struct lev_crc32*,struct lev_crc32*,int) ;
 scalar_t__ vk_pread (TYPE_1__*,struct lev_crc32*,int,long long) ;
 int vkprintf (int,char*,int,int ,int ) ;

int prefix_check (file_t *A, file_t *B) {
  if (A->size < B->size) {
    kprintf ("%s is smaller than %s\n", A->filename, B->filename);
    return -2;
  }
  if (A->size < 20 || B->size < 20) {
    return -1;
  }

  int r = head_check (A, B);
  if (r < 0) {
    return r;
  }

  if (B->size == STORAGE_LEV_START_SIZE) {
    local_id = 0;
    return 0;
  }

  struct lev_crc32 C1, C2;
  int sz = sizeof (C1);
  long long off = B->size - sz;
  if (vk_pread (A, &C1, sz, off) < 0) {
    return -3;
  }
  if (vk_pread (B, &C2, sz, off) < 0) {
    return -4;
  }
  crc32_complement = ~C1.crc32;
  if (C1.type != LEV_CRC32) {
    kprintf ("didn't find LEV_CRC32 record in %s at offset %lld\n", A->filename, off);
    return -5;
  }

  if (memcmp (&C1, &C2, sz)) {
    kprintf ("last lev_crc32 record don't matched.\n");
    return -6;
  }
  vkprintf (3, "Last %d bytes are equal (%s, %s).\n", sz, A->filename, B->filename);
  crc32_complement = crc32_partial (&C1, sz, crc32_complement);
  return 0;
}
