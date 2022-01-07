
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
typedef int description ;
struct TYPE_12__ {char* string; } ;
struct TYPE_11__ {char const* const string; } ;
struct TYPE_10__ {char const* const string; } ;
struct TYPE_9__ {char const* const string; } ;
struct TYPE_8__ {char const* const string; } ;
struct TYPE_7__ {char const* const string; } ;


 int ARRAY_LEN (char const* const*) ;
 char* FS_BuildOSPath (char const* const,char*,char*) ;
 int FS_GetModDescription (char*,char*,int) ;
 scalar_t__ FS_IsExt (char*,char*,int) ;
 int MAX_INSTALL_PATH ;
 scalar_t__ Q_stricmp (char*,char*) ;
 scalar_t__ Q_stricmpn (char*,char*,int) ;
 char** Sys_ConcatenateFileLists (char**,char**) ;
 int Sys_CountFileList (char**) ;
 int Sys_FreeFileList (char**) ;
 char** Sys_ListFiles (char const* const,char*,int *,int*,scalar_t__) ;
 TYPE_6__* com_basegame ;
 TYPE_5__* fs_basepath ;
 TYPE_4__* fs_gogpath ;
 TYPE_3__* fs_homepath ;
 TYPE_2__* fs_steampath ;
 TYPE_1__* fs_temporarypath ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

int FS_GetModList( char *listbuf, int bufsize ) {
 int nMods, i, j, k, nTotal, nLen, nPaks, nDirs, nPakDirs, nPotential, nDescLen;
 char **pFiles = ((void*)0);
 char **pPaks = ((void*)0);
 char **pDirs = ((void*)0);
 char *name, *path;
 char description[MAX_INSTALL_PATH];

 int dummy;
 char **pFiles0 = ((void*)0);
 qboolean bDrop = qfalse;


 const char * const paths[] = { fs_basepath->string, fs_homepath->string, fs_steampath->string, fs_gogpath->string, fs_temporarypath->string };

 *listbuf = 0;
 nMods = nTotal = 0;


 for (i = 0; i < ARRAY_LEN(paths); i++) {
  pFiles0 = Sys_ListFiles(paths[i], ((void*)0), ((void*)0), &dummy, qtrue);

  pFiles = Sys_ConcatenateFileLists(pFiles, pFiles0);
 }

 nPotential = Sys_CountFileList(pFiles);

 for (i = 0; i < nPotential; i++) {
  name = pFiles[i];


  if (i != 0) {
   bDrop = qfalse;
   for (j = 0; j < i; j++) {
    if (Q_stricmp(pFiles[j], name) == 0) {

     bDrop = qtrue;
     break;
    }
   }
  }

  if (bDrop || Q_stricmp(name, com_basegame->string) == 0 || Q_stricmpn(name, ".", 1) == 0) {
   continue;
  }




  for (j = 0; j < ARRAY_LEN(paths); j++) {
   path = FS_BuildOSPath(paths[j], name, "");
   nPaks = nDirs = nPakDirs = 0;
   pPaks = Sys_ListFiles(path, ".pk3", ((void*)0), &nPaks, qfalse);
   pDirs = Sys_ListFiles(path, "/", ((void*)0), &nDirs, qfalse);
   for (k = 0; k < nDirs; k++) {

    if (FS_IsExt(pDirs[k], ".pk3dir", strlen(pDirs[k]))) {
     nPakDirs++;
    }
   }

   Sys_FreeFileList(pPaks);
   Sys_FreeFileList(pDirs);

   if (nPaks > 0 || nPakDirs > 0) {
    break;
   }
  }

  if (nPaks > 0 || nPakDirs > 0) {
   nLen = strlen(name) + 1;


   FS_GetModDescription(name, description, sizeof(description));
   nDescLen = strlen(description) + 1;

   if (nTotal + nLen + 1 + nDescLen + 1 < bufsize) {
    strcpy(listbuf, name);
    listbuf += nLen;
    strcpy(listbuf, description);
    listbuf += nDescLen;
    nTotal += nLen + nDescLen;
    nMods++;
   } else {
    break;
   }
  }
 }
 Sys_FreeFileList( pFiles );

 return nMods;
}
