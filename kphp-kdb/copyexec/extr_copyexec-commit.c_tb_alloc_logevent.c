
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transaction_buffer {scalar_t__ p; scalar_t__ size; void* buff; } ;
struct lev_generic {int type; } ;
typedef int lev_type_t ;


 int exit (int) ;
 int kprintf (char*,scalar_t__) ;
 int memset (void*,int ,long long) ;
 int vkprintf (int,char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void *tb_alloc_logevent (struct transaction_buffer *B, lev_type_t type, long long size) {
  size = (size + 3) & -4;
  if (B->p + size > B->size) {
    vkprintf (3, "B->p + size = %lld, B->size = %lld\n", B->p + size, B->size);
    kprintf ("Transaction buffer too small (%lld), try increase it with -M command line switch.\n", B->size);
    exit (1);
  }
  void *ptr = B->buff + B->p;
  B->p += size;
  memset (ptr, 0, size);
  struct lev_generic *E = ptr;
  E->type = type;
  return ptr;
}
