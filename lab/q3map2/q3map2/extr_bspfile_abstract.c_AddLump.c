
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* length; void* offset; } ;
typedef TYPE_1__ bspLump_t ;
struct TYPE_5__ {TYPE_1__* lumps; } ;
typedef TYPE_2__ bspHeader_t ;
typedef int FILE ;


 void* LittleLong (int) ;
 int SafeWrite (int *,char*,unsigned int) ;
 int ftell (int *) ;

void AddLump( FILE *file, bspHeader_t *header, int lumpNum, const void *data, int length ){
 bspLump_t *lump;
 char pad[3] = {'\0', '\0', '\0'};
 unsigned int lengthU = length;
 unsigned int padLength = ((lengthU + 3) / 4) * 4 - lengthU;



 lump = &header->lumps[ lumpNum ];
 lump->offset = LittleLong( ftell( file ) );
 lump->length = LittleLong( length );


 SafeWrite( file, data, length );
 if ( padLength != 0 ) {
  SafeWrite( file, pad, padLength );
 }
}
