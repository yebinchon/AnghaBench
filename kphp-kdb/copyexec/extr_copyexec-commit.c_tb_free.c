
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transaction_buffer {int * buff; } ;


 int free (int *) ;

__attribute__((used)) static void tb_free (struct transaction_buffer *B) {
  if (B->buff) {
    free (B->buff);
    B->buff = ((void*)0);
  }
}
