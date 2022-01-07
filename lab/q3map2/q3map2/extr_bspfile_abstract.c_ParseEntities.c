
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ParseEntity () ;
 int ParseFromMemory (int ,int ) ;
 int bspEntData ;
 int bspEntDataSize ;
 scalar_t__ numBSPEntities ;
 scalar_t__ numEntities ;

void ParseEntities( void ){
 numEntities = 0;
 ParseFromMemory( bspEntData, bspEntDataSize );
 while ( ParseEntity() ) ;


 numBSPEntities = numEntities;
}
