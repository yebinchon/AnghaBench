
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int fileHandle_t ;
struct TYPE_2__ {int (* FS_Read ) (char*,int,int ) ;int (* FS_FCloseFile ) (int ) ;scalar_t__ (* FS_Seek ) (int ,int,int ) ;int (* Print ) (int ,char*) ;} ;


 int AAS_DumpAASData () ;
 int AAS_Error (char*) ;
 int FS_SEEK_SET ;
 scalar_t__ GetClearedHunkMemory (int) ;
 int PRT_WARNING ;
 TYPE_1__ botimport ;
 int stub1 (int ,char*) ;
 scalar_t__ stub2 (int ,int,int ) ;
 int stub3 (int ) ;
 int stub4 (char*,int,int ) ;

char *AAS_LoadAASLump(fileHandle_t fp, int offset, int length, int *lastoffset, int size)
{
 char *buf;

 if (!length)
 {

  return (char *) GetClearedHunkMemory(size+1);
 }

 if (offset != *lastoffset)
 {
  botimport.Print(PRT_WARNING, "AAS file not sequentially read\n");
  if (botimport.FS_Seek(fp, offset, FS_SEEK_SET))
  {
   AAS_Error("can't seek to aas lump\n");
   AAS_DumpAASData();
   botimport.FS_FCloseFile(fp);
   return ((void*)0);
  }
 }

 buf = (char *) GetClearedHunkMemory(length+1);

 if (length)
 {
  botimport.FS_Read(buf, length, fp );
  *lastoffset += length;
 }
 return buf;
}
