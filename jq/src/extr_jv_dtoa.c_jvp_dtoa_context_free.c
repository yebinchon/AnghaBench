
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct dtoa_context {TYPE_1__** freelist; TYPE_1__* p5s; } ;
struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ Bigint ;


 int Bfree (struct dtoa_context*,TYPE_1__*) ;
 int FREE (TYPE_1__*) ;

void jvp_dtoa_context_free(struct dtoa_context* C) {
  int k;
  while (C->p5s) {
    Bigint* p5 = C->p5s;
    C->p5s = p5->next;
    Bfree(C, p5);
  }
  for (k=0; k<(int)(sizeof(C->freelist)/sizeof(C->freelist[0])); k++) {
    while (C->freelist[k]) {
      Bigint* v = C->freelist[k];
      C->freelist[k] = v->next;
      FREE(v);
    }
  }
}
