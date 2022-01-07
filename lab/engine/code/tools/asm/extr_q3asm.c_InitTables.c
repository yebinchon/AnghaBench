
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; } ;


 int HashString (int ) ;
 int NUM_SOURCE_OPS ;
 int hashtable_add (void*,int ,TYPE_1__*) ;
 void* hashtable_new (int) ;
 int * opcodesHash ;
 void* optable ;
 TYPE_1__* sourceOps ;
 void* symtable ;
 int symtablelen ;

void InitTables( void ) {
 int i;

 symtable = hashtable_new(symtablelen);
 optable = hashtable_new(100);

 for ( i = 0 ; i < NUM_SOURCE_OPS ; i++ ) {
  opcodesHash[i] = HashString( sourceOps[i].name );
  hashtable_add(optable, opcodesHash[i], sourceOps + i);
 }
}
