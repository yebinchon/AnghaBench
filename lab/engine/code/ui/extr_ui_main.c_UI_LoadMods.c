
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int dirlist ;
struct TYPE_4__ {size_t modCount; TYPE_1__* modList; } ;
struct TYPE_3__ {void* modDescr; void* modName; } ;


 size_t MAX_MODS ;
 void* String_Alloc (char*) ;
 int strlen (char*) ;
 int trap_FS_GetFileList (char*,char*,char*,int) ;
 TYPE_2__ uiInfo ;

__attribute__((used)) static void UI_LoadMods( void ) {
 int numdirs;
 char dirlist[2048];
 char *dirptr;
  char *descptr;
 int i;
 int dirlen;

 uiInfo.modCount = 0;
 numdirs = trap_FS_GetFileList( "$modlist", "", dirlist, sizeof(dirlist) );
 dirptr = dirlist;
 for( i = 0; i < numdirs; i++ ) {
  dirlen = strlen( dirptr ) + 1;
    descptr = dirptr + dirlen;
  uiInfo.modList[uiInfo.modCount].modName = String_Alloc(dirptr);
  uiInfo.modList[uiInfo.modCount].modDescr = String_Alloc(descptr);
    dirptr += dirlen + strlen(descptr) + 1;
  uiInfo.modCount++;
  if (uiInfo.modCount >= MAX_MODS) {
   break;
  }
 }

}
