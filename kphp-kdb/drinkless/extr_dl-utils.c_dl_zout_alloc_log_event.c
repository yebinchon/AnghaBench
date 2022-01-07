
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int left; void* ptr; } ;
typedef TYPE_1__ dl_zout ;


 int assert (int) ;
 int dl_zout_flush (TYPE_1__*) ;
 int memset (void*,int,size_t) ;

void *dl_zout_alloc_log_event (dl_zout *f, int type, int bytes) {
  int adj_bytes = -bytes & 3;
  bytes = (bytes + 3) & -4;

  if (bytes > f->left) {
    dl_zout_flush (f);
  }

  assert (bytes >= 4 && bytes <= f->left);

  void *EV = f->ptr;

  f->ptr += bytes;
  f->left -= bytes;

  *(unsigned int *)EV = (unsigned int)type;

  if (adj_bytes) {
    memset (f->ptr - adj_bytes, adj_bytes, (size_t)adj_bytes);
  }

  return EV;
}
