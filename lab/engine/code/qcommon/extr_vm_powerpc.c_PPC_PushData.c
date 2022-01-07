
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {long count; unsigned int* data; struct TYPE_4__* next; } ;
typedef TYPE_1__ local_data_t ;


 long LOCAL_DATA_CHUNK ;
 TYPE_1__* PPC_Malloc (int) ;
 size_t VM_Data_Offset (int ) ;
 int * data ;
 long data_acc ;
 TYPE_1__* data_first ;

__attribute__((used)) static size_t
PPC_PushData( unsigned int datum )
{
 local_data_t *d_now = data_first;
 long int accumulated = 0;


 do {
  long int i;
  for ( i = 0; i < d_now->count; i++ ) {
   if ( d_now->data[ i ] == datum ) {
    accumulated += i;
    return VM_Data_Offset( data[ accumulated ] );
   }
  }
  if ( !d_now->next )
   break;

  accumulated += d_now->count;
  d_now = d_now->next;
 } while (1);


 accumulated += d_now->count;


 if ( d_now->count >= LOCAL_DATA_CHUNK ) {
  d_now->next = PPC_Malloc( sizeof( local_data_t ) );
  d_now = d_now->next;
  d_now->count = 0;
  d_now->next = ((void*)0);
 }

 d_now->data[ d_now->count ] = datum;
 d_now->count += 1;

 data_acc = accumulated + 1;

 return VM_Data_Offset( data[ accumulated ] );
}
