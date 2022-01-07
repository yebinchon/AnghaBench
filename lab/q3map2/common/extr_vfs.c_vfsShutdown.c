
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int unzFile ;
struct TYPE_8__ {struct TYPE_8__* name; } ;
typedef TYPE_1__ VFS_PAKFILE ;
struct TYPE_9__ {TYPE_1__* data; } ;


 int free (TYPE_1__*) ;
 TYPE_2__* g_pakFiles ;
 TYPE_2__* g_slist_remove (TYPE_2__*,TYPE_1__*) ;
 TYPE_2__* g_unzFiles ;
 int unzClose (int ) ;

void vfsShutdown(){
 while ( g_unzFiles )
 {
  unzClose( (unzFile)g_unzFiles->data );
  g_unzFiles = g_slist_remove( g_unzFiles, g_unzFiles->data );
 }

 while ( g_pakFiles )
 {
  VFS_PAKFILE* file = (VFS_PAKFILE*)g_pakFiles->data;
  free( file->name );
  free( file );
  g_pakFiles = g_slist_remove( g_pakFiles, file );
 }
}
