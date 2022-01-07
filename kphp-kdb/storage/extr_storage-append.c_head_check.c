
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ size; int filename; } ;
typedef TYPE_1__ file_t ;


 scalar_t__ STORAGE_LEV_START_SIZE ;
 int crc32_complement ;
 int crc32_partial (unsigned char*,scalar_t__,int) ;
 int kprintf (char*,int ,int ) ;
 scalar_t__ memcmp (unsigned char*,unsigned char*,scalar_t__) ;
 scalar_t__ vk_pread (TYPE_1__*,unsigned char*,scalar_t__,int ) ;
 int vkprintf (int,char*,int ,int ) ;

int head_check (file_t *A, file_t *B) {
  if (B->size < STORAGE_LEV_START_SIZE) {
    return -10;
  }
  unsigned char a[STORAGE_LEV_START_SIZE], b[STORAGE_LEV_START_SIZE];
  if (vk_pread (A, a, STORAGE_LEV_START_SIZE, 0) < 0) {
    return -7;
  }
  if (vk_pread (B, b, STORAGE_LEV_START_SIZE, 0) < 0) {
    return -8;
  }
  if (memcmp (a, b, STORAGE_LEV_START_SIZE)) {
    kprintf ("%s isn't prefix of %s\n", B->filename, A->filename);
    return -9;
  }
  vkprintf (3, "First 36 bytes are equal (%s, %s).\n", A->filename, B->filename);
  crc32_complement = crc32_partial (a, STORAGE_LEV_START_SIZE, -1);
  return 0;
}
