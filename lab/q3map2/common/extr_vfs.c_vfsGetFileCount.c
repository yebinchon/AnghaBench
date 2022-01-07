
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int name; } ;
typedef TYPE_1__ VFS_PAKFILE ;
struct TYPE_7__ {scalar_t__ data; } ;
typedef TYPE_2__ GSList ;


 int NAME_MAX ;
 int R_OK ;
 scalar_t__ access (char*,int ) ;
 char* g_ascii_strdown (char*,int) ;
 int g_free (char*) ;
 int g_numDirs ;
 TYPE_2__* g_pakFiles ;
 TYPE_2__* g_slist_next (TYPE_2__*) ;
 char const** g_strDirs ;
 int strcat (char*,char*) ;
 scalar_t__ strcmp (int ,char*) ;
 int strcpy (char*,char const*) ;
 int vfsFixDOSName (char*) ;

int vfsGetFileCount( const char *filename ){
 int i, count = 0;
 char fixed[NAME_MAX], tmp[NAME_MAX];
 char *lower;
 GSList *lst;

 strcpy( fixed, filename );
 vfsFixDOSName( fixed );
 lower = g_ascii_strdown( fixed, -1 );

 for ( lst = g_pakFiles; lst != ((void*)0); lst = g_slist_next( lst ) )
 {
  VFS_PAKFILE* file = (VFS_PAKFILE*)lst->data;

  if ( strcmp( file->name, lower ) == 0 ) {
   count++;
  }
 }

 for ( i = 0; i < g_numDirs; i++ )
 {
  strcpy( tmp, g_strDirs[i] );
  strcat( tmp, lower );
  if ( access( tmp, R_OK ) == 0 ) {
   count++;
  }
 }
 g_free( lower );
 return count;
}
