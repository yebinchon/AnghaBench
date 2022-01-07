
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* lumps; } ;
typedef TYPE_2__ bspHeader_t ;
struct TYPE_4__ {int length; } ;


 int Error (char*,int,int) ;
 int SYS_WRN ;
 int Sys_FPrintf (int ,char*,int,int) ;
 scalar_t__ force ;

int GetLumpElements( bspHeader_t *header, int lump, int size ){

 if ( header->lumps[ lump ].length % size ) {
  if ( force ) {
   Sys_FPrintf( SYS_WRN, "WARNING: GetLumpElements: odd lump size (%d) in lump %d\n", header->lumps[ lump ].length, lump );
   return 0;
  }
  else{
   Error( "GetLumpElements: odd lump size (%d) in lump %d", header->lumps[ lump ].length, lump );
  }
 }


 return header->lumps[ lump ].length / size;
}
