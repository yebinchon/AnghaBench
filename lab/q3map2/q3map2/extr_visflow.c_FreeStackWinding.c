
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* freewindings; int * windings; } ;
typedef TYPE_1__ pstack_t ;
typedef int fixedWinding_t ;


 int Error (char*) ;

void FreeStackWinding( fixedWinding_t *w, pstack_t *stack ){
 int i;

 for (i = 0; i < sizeof(stack->windings) / sizeof(stack->windings[0]); i++) {
  if (w == &stack->windings[i]) {
   if ( stack->freewindings[i] ) {
    Error( "FreeStackWinding: already free" );
   }
   stack->freewindings[i] = 1;
   break;
  }
 }
}
