
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ patches; scalar_t__ brushes; } ;


 int SetKeyValue (TYPE_1__*,char*,char*) ;
 TYPE_1__* entities ;
 int numEntities ;
 int sprintf (char*,char*,int) ;

void SetModelNumbers( void ){
 int i;
 int models;
 char value[10];

 models = 1;
 for ( i = 1 ; i < numEntities ; i++ ) {
  if ( entities[i].brushes || entities[i].patches ) {
   sprintf( value, "*%i", models );
   models++;
   SetKeyValue( &entities[i], "model", value );
  }
 }

}
