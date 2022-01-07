
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dtoa_context {scalar_t__ p5s; scalar_t__* freelist; } ;



void jvp_dtoa_context_init(struct dtoa_context* C) {
  int i;
  for (i=0; i<(int)(sizeof(C->freelist)/sizeof(C->freelist[0])); i++) {
    C->freelist[i] = 0;
  }
  C->p5s = 0;
}
