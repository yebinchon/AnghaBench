
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {TYPE_1__* dir; TYPE_7__* pack; struct TYPE_11__* next; } ;
typedef TYPE_4__ searchpath_t ;
struct TYPE_13__ {int pakFilename; int numfiles; } ;
struct TYPE_9__ {scalar_t__ o; } ;
struct TYPE_10__ {TYPE_2__ file; } ;
struct TYPE_12__ {int name; TYPE_3__ handleFiles; } ;
struct TYPE_8__ {int gamedir; int path; } ;


 int Com_Printf (char*,...) ;
 int FS_PakIsPure (TYPE_7__*) ;
 int MAX_FILE_HANDLES ;
 int PATH_SEP ;
 scalar_t__ fs_numServerPaks ;
 TYPE_4__* fs_searchpaths ;
 TYPE_5__* fsh ;

void FS_Path_f( void ) {
 searchpath_t *s;
 int i;

 Com_Printf ("We are looking in the current search path:\n");
 for (s = fs_searchpaths; s; s = s->next) {
  if (s->pack) {
   Com_Printf ("%s (%i files)\n", s->pack->pakFilename, s->pack->numfiles);
   if ( fs_numServerPaks ) {
    if ( !FS_PakIsPure(s->pack) ) {
     Com_Printf( "    not on the pure list\n" );
    } else {
     Com_Printf( "    on the pure list\n" );
    }
   }
  } else {
   Com_Printf ("%s%c%s\n", s->dir->path, PATH_SEP, s->dir->gamedir );
  }
 }


 Com_Printf( "\n" );
 for ( i = 1 ; i < MAX_FILE_HANDLES ; i++ ) {
  if ( fsh[i].handleFiles.file.o ) {
   Com_Printf( "handle %i: %s\n", i, fsh[i].name );
  }
 }
}
