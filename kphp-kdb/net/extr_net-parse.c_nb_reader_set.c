
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netbuffer {int dummy; } ;
struct nb_reader {int bytes; int it; scalar_t__ ptr_s; scalar_t__ ptr_e; scalar_t__ p; scalar_t__ bytes_read; } ;


 scalar_t__ nbit_get_ptr (int *) ;
 scalar_t__ nbit_ready_bytes (int *) ;
 int nbit_set (int *,struct netbuffer*) ;

void nb_reader_set (struct nb_reader *I, struct netbuffer *In, const int bytes) {
  I->bytes = bytes;
  I->bytes_read = 0;
  nbit_set (&I->it, In);
  I->p = I->ptr_s = nbit_get_ptr (&I->it);
  I->ptr_e = I->ptr_s + nbit_ready_bytes (&I->it);
}
