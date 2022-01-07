
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ParseEntity () ;
 int ParseFromMemory (int ,int ) ;
 int dentdata ;
 int entdatasize ;
 scalar_t__ num_entities ;

void ParseEntities( void ) {
 num_entities = 0;
 ParseFromMemory( dentdata, entdatasize );

 while ( ParseEntity() ) {
 }
}
