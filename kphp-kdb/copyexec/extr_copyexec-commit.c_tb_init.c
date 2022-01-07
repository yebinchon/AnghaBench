
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transaction_buffer {long long size; scalar_t__ p; int buff; } ;


 int exit (int) ;
 int kprintf (char*,long long) ;
 int malloc (long long) ;

__attribute__((used)) static void tb_init (struct transaction_buffer *B, long long size) {
  B->buff = malloc (size);
  if (!B->buff) {
    kprintf ("Not enough memory to allocate transaction buffer (%lld bytes size).\n", size);
    exit (1);
  }
  B->size = size;
  B->p = 0;
}
