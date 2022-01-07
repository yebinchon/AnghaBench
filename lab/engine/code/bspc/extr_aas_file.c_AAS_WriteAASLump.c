
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* filelen; void* fileofs; } ;
typedef TYPE_1__ aas_lump_t ;
struct TYPE_5__ {TYPE_1__* lumps; } ;
typedef TYPE_2__ aas_header_t ;
typedef int FILE ;


 void* LittleLong (int) ;
 int Log_Print (char*,int) ;
 int fclose (int *) ;
 int ftell (int *) ;
 int fwrite (void*,int,int,int *) ;

int AAS_WriteAASLump(FILE *fp, aas_header_t *h, int lumpnum, void *data, int length)
{
 aas_lump_t *lump;

 lump = &h->lumps[lumpnum];

 lump->fileofs = LittleLong(ftell(fp));
 lump->filelen = LittleLong(length);

 if (length > 0)
 {
  if (fwrite(data, length, 1, fp) < 1)
  {
   Log_Print("error writing lump %s\n", lumpnum);
   fclose(fp);
   return 0;
  }
 }
 return 1;
}
