
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* filelen; void* fileofs; } ;
typedef TYPE_1__ q1_lump_t ;
struct TYPE_4__ {TYPE_1__* lumps; } ;


 void* LittleLong (int) ;
 int SafeWrite (int ,void*,int) ;
 int ftell (int ) ;
 TYPE_2__* q1_header ;
 int q1_wadfile ;

void Q1_AddLump (int lumpnum, void *data, int len)
{
 q1_lump_t *lump;

 lump = &q1_header->lumps[lumpnum];

 lump->fileofs = LittleLong(ftell(q1_wadfile));
 lump->filelen = LittleLong(len);
 SafeWrite(q1_wadfile, data, (len+3)&~3);
}
