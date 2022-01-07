
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* filelen; void* fileofs; } ;
typedef TYPE_1__ sin_lump_t ;
struct TYPE_4__ {TYPE_1__* lumps; } ;


 int Error (char*,int,int,int) ;
 void* LittleLong (int) ;
 int SafeWrite (int ,void*,int) ;
 int ftell (int ) ;
 TYPE_2__* header ;
 int wadfile ;

void Sin_AddLump (int lumpnum, void *data, int len, int size, int maxsize)
{
 sin_lump_t *lump;
 int totallength;

 totallength = len*size;

 if (len > maxsize)
  Error ("Sin_WriteBSPFile: exceeded max size for lump %d size %d > maxsize %d\n", lumpnum, len, maxsize );

 lump = &header->lumps[lumpnum];

 lump->fileofs = LittleLong( ftell(wadfile) );
 lump->filelen = LittleLong(totallength);
 SafeWrite (wadfile, data, (totallength+3)&~3);
}
