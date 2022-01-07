
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* dir; scalar_t__ pack; struct TYPE_5__* next; } ;
typedef TYPE_1__ searchpath_t ;
typedef scalar_t__ qboolean ;
struct TYPE_6__ {scalar_t__ fileSize; } ;


 int Cmd_RemoveCommand (char*) ;
 int FS_FCloseFile (int) ;
 int FS_FreePak (scalar_t__) ;
 int MAX_FILE_HANDLES ;
 int Z_Free (TYPE_1__*) ;
 int fclose (int ) ;
 TYPE_1__* fs_searchpaths ;
 TYPE_2__* fsh ;
 int missingFiles ;

void FS_Shutdown( qboolean closemfp ) {
 searchpath_t *p, *next;
 int i;

 for(i = 0; i < MAX_FILE_HANDLES; i++) {
  if (fsh[i].fileSize) {
   FS_FCloseFile(i);
  }
 }


 for(p = fs_searchpaths; p; p = next)
 {
  next = p->next;

  if(p->pack)
   FS_FreePak(p->pack);
  if (p->dir)
   Z_Free(p->dir);

  Z_Free(p);
 }


 fs_searchpaths = ((void*)0);

 Cmd_RemoveCommand( "path" );
 Cmd_RemoveCommand( "dir" );
 Cmd_RemoveCommand( "fdir" );
 Cmd_RemoveCommand( "touchFile" );
 Cmd_RemoveCommand( "which" );






}
