
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int byte ;
struct TYPE_5__ {TYPE_1__* lumps; } ;
typedef TYPE_2__ bspHeader_t ;
struct TYPE_4__ {int length; int offset; } ;


 int Error (char*,int,int) ;
 int SYS_WRN ;
 int Sys_FPrintf (int ,char*,int,int) ;
 scalar_t__ force ;
 int memcpy (void*,int *,int) ;

int CopyLump( bspHeader_t *header, int lump, void *dest, int size ){
 int length, offset;



 length = header->lumps[ lump ].length;
 offset = header->lumps[ lump ].offset;


 if ( length == 0 ) {
  return 0;
 }
 if ( length % size ) {
  if ( force ) {
   Sys_FPrintf( SYS_WRN, "WARNING: CopyLump: odd lump size (%d) in lump %d\n", length, lump );
   return 0;
  }
  else{
   Error( "CopyLump: odd lump size (%d) in lump %d", length, lump );
  }
 }


 memcpy( dest, (byte*) header + offset, length );
 return length / size;
}
