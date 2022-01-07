
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ searchpath_t ;


 char* Cmd_Argv (int) ;
 int Com_Printf (char*,...) ;
 scalar_t__ FS_Which (char*,TYPE_1__*) ;
 TYPE_1__* fs_searchpaths ;

void FS_Which_f( void ) {
 searchpath_t *search;
 char *filename;

 filename = Cmd_Argv(1);

 if ( !filename[0] ) {
  Com_Printf( "Usage: which <file>\n" );
  return;
 }


 if ( filename[0] == '/' || filename[0] == '\\' ) {
  filename++;
 }


 for(search = fs_searchpaths; search; search = search->next)
 {
  if(FS_Which(filename, search))
   return;
 }

 Com_Printf("File not found: \"%s\"\n", filename);
}
