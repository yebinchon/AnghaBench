
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dtoa_context {TYPE_1__** freelist; } ;
struct TYPE_3__ {size_t k; struct TYPE_3__* next; } ;
typedef TYPE_1__ Bigint ;


 int FREE (void*) ;
 size_t Kmax ;
 int free (void*) ;

__attribute__((used)) static void
Bfree
 (struct dtoa_context* C, Bigint *v)
{
 if (v) {
  if (v->k > Kmax)



   free((void*)v);

  else {
   v->next = C->freelist[v->k];
   C->freelist[v->k] = v;
   }
  }
 }
