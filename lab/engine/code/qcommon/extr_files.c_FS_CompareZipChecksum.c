
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_4__ {int checksum; } ;
typedef TYPE_1__ pack_t ;


 int FS_FreePak (TYPE_1__*) ;
 TYPE_1__* FS_LoadZipFile (char const*,char*) ;
 int fs_numServerReferencedPaks ;
 int* fs_serverReferencedPaks ;
 int qfalse ;
 int qtrue ;

qboolean FS_CompareZipChecksum(const char *zipfile)
{
 pack_t *thepak;
 int index, checksum;

 thepak = FS_LoadZipFile(zipfile, "");

 if(!thepak)
  return qfalse;

 checksum = thepak->checksum;
 FS_FreePak(thepak);

 for(index = 0; index < fs_numServerReferencedPaks; index++)
 {
  if(checksum == fs_serverReferencedPaks[index])
   return qtrue;
 }

 return qfalse;
}
