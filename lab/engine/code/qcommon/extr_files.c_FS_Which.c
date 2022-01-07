
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* dir; TYPE_1__* pack; } ;
typedef TYPE_3__ searchpath_t ;
typedef int qboolean ;
struct TYPE_6__ {int fullpath; } ;
struct TYPE_5__ {int pakFilename; } ;


 int Com_Printf (char*,char const*,int ) ;
 scalar_t__ FS_FOpenFileReadDir (char const*,TYPE_3__*,int *,int ,int ) ;
 int qfalse ;
 int qtrue ;

qboolean FS_Which(const char *filename, void *searchPath)
{
 searchpath_t *search = searchPath;

 if(FS_FOpenFileReadDir(filename, search, ((void*)0), qfalse, qfalse) > 0)
 {
  if(search->pack)
  {
   Com_Printf("File \"%s\" found in \"%s\"\n", filename, search->pack->pakFilename);
   return qtrue;
  }
  else if(search->dir)
  {
   Com_Printf( "File \"%s\" found at \"%s\"\n", filename, search->dir->fullpath);
   return qtrue;
  }
 }

 return qfalse;
}
