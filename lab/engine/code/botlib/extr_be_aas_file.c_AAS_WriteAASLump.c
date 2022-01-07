
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int fileHandle_t ;
struct TYPE_5__ {void* filelen; void* fileofs; } ;
typedef TYPE_1__ aas_lump_t ;
struct TYPE_6__ {TYPE_1__* lumps; } ;
typedef TYPE_2__ aas_header_t ;
struct TYPE_7__ {int (* FS_Write ) (void*,int,int ) ;} ;


 int AAS_WriteAASLump_offset ;
 void* LittleLong (int) ;
 TYPE_3__ botimport ;
 int qtrue ;
 int stub1 (void*,int,int ) ;

int AAS_WriteAASLump(fileHandle_t fp, aas_header_t *h, int lumpnum, void *data, int length)
{
 aas_lump_t *lump;

 lump = &h->lumps[lumpnum];

 lump->fileofs = LittleLong(AAS_WriteAASLump_offset);
 lump->filelen = LittleLong(length);

 if (length > 0)
 {
  botimport.FS_Write(data, length, fp );
 }

 AAS_WriteAASLump_offset += length;

 return qtrue;
}
