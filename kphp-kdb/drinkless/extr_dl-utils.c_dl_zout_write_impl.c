
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t id; int written; int crc32_complement; scalar_t__ use_crc32; } ;
typedef TYPE_1__ dl_zout ;


 int assert (int) ;
 int crc32_partial (void const*,int,int ) ;
 int * fd ;
 int* fpos ;
 int write (int ,void const*,size_t) ;

__attribute__((used)) static int dl_zout_write_impl (dl_zout *f, const void *src, int len) {
  assert (write (fd[f->id], src, (size_t)len) == len);
  fpos[f->id] += len;

  if (f->use_crc32) {
    f->crc32_complement = crc32_partial (src, len, f->crc32_complement);
  }
  f->written += len;
  return len;
}
