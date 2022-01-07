
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int string; } ;


 int FS_FCloseFile (scalar_t__) ;
 int FS_HomeRemove (int ) ;
 scalar_t__ com_journalFile ;
 TYPE_1__* com_pipefile ;
 scalar_t__ logfile ;
 scalar_t__ pipefile ;

void Com_Shutdown (void) {
 if (logfile) {
  FS_FCloseFile (logfile);
  logfile = 0;
 }

 if ( com_journalFile ) {
  FS_FCloseFile( com_journalFile );
  com_journalFile = 0;
 }

 if( pipefile ) {
  FS_FCloseFile( pipefile );
  FS_HomeRemove( com_pipefile->string );
 }

}
