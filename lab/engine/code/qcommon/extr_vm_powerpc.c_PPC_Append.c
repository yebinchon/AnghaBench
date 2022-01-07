
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned long i_count; struct TYPE_5__* next; scalar_t__ count; } ;
typedef TYPE_1__ dest_instruction_t ;


 unsigned long FALSE_ICOUNT ;
 int di_count ;
 TYPE_1__* di_last ;
 TYPE_1__** di_pointers ;

__attribute__((used)) static void
PPC_Append(
  dest_instruction_t *di_now,
  unsigned long int i_count
     )
{
 di_now->count = di_count++;
 di_now->i_count = i_count;
 di_now->next = ((void*)0);

 di_last->next = di_now;
 di_last = di_now;

 if ( i_count != FALSE_ICOUNT ) {
  if ( ! di_pointers[ i_count ] )
   di_pointers[ i_count ] = di_now;
 }
}
