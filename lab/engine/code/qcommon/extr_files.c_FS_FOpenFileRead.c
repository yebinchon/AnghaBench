
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ pack; struct TYPE_4__* next; } ;
typedef TYPE_1__ searchpath_t ;
typedef int qboolean ;
typedef scalar_t__ fileHandle_t ;


 int Com_Error (int ,char*) ;
 int ERR_FATAL ;
 long FS_FOpenFileReadDir (char const*,TYPE_1__*,scalar_t__*,int,int ) ;
 char* Q3CONFIG_CFG ;
 int fprintf (scalar_t__,char*,char const*) ;
 TYPE_1__* fs_searchpaths ;
 scalar_t__ missingFiles ;
 int qfalse ;
 int strcmp (char const*,char*) ;

long FS_FOpenFileRead(const char *filename, fileHandle_t *file, qboolean uniqueFILE)
{
 searchpath_t *search;
 long len;
 qboolean isLocalConfig;

 if(!fs_searchpaths)
  Com_Error(ERR_FATAL, "Filesystem call made without initialization");

 isLocalConfig = !strcmp(filename, "autoexec.cfg") || !strcmp(filename, Q3CONFIG_CFG);
 for(search = fs_searchpaths; search; search = search->next)
 {

  if (isLocalConfig && search->pack)
   continue;

  len = FS_FOpenFileReadDir(filename, search, file, uniqueFILE, qfalse);

  if(file == ((void*)0))
  {
   if(len > 0)
    return len;
  }
  else
  {
   if(len >= 0 && *file)
    return len;
  }

 }






 if(file)
 {
  *file = 0;
  return -1;
 }
 else
 {


  return 0;
 }
}
