
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void traceWinding_t ;


 scalar_t__ GROW_TRACE_WINDINGS ;
 int deadWinding ;
 int free (void*) ;
 int maxTraceWindings ;
 int memcpy (void*,void*,int) ;
 int numTraceWindings ;
 void* safe_malloc (int) ;
 void* traceWindings ;

__attribute__((used)) static int AddTraceWinding( traceWinding_t *tw ){
 int num;
 void *temp;



 if ( deadWinding >= 0 && deadWinding < numTraceWindings ) {
  num = deadWinding;
 }
 else
 {

  num = numTraceWindings;


  if ( numTraceWindings >= maxTraceWindings ) {

   maxTraceWindings += GROW_TRACE_WINDINGS;
   temp = safe_malloc( maxTraceWindings * sizeof( *traceWindings ) );
   if ( traceWindings != ((void*)0) ) {
    memcpy( temp, traceWindings, numTraceWindings * sizeof( *traceWindings ) );
    free( traceWindings );
   }
   traceWindings = (traceWinding_t*) temp;
  }
 }


 memcpy( &traceWindings[ num ], tw, sizeof( *traceWindings ) );
 if ( num == numTraceWindings ) {
  numTraceWindings++;
 }
 deadWinding = -1;


 return num;
}
