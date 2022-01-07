
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int filename; int fd; } ;
typedef TYPE_1__ file_t ;


 int kprintf (char*,int ,int,long long) ;
 int pread (int ,void*,int,long long) ;

int vk_pread (file_t *F, void *a, int sz, long long off) {
  if (sz != pread (F->fd, a, sz, off)) {
    kprintf ("pread (%s, %d, %lld) failed. %m\n", F->filename, sz, off);
    return -1;
  }
  return 0;
}
