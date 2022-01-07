
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int unz_s ;
struct TYPE_6__ {int size; int zipfile; int zipinfo; int name; } ;
typedef TYPE_1__ VFS_PAKFILE ;
struct TYPE_7__ {scalar_t__ data; } ;
typedef TYPE_2__ GSList ;
typedef int FILE ;


 int NAME_MAX ;
 int R_OK ;
 int SEEK_END ;
 scalar_t__ UNZ_OK ;
 scalar_t__ access (char*,int ) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fread (void*,int,long,int *) ;
 int fseek (int *,int ,int ) ;
 long ftell (int *) ;
 char* g_ascii_strdown (char*,int) ;
 int g_free (char*) ;
 int g_numDirs ;
 TYPE_2__* g_pakFiles ;
 TYPE_2__* g_slist_next (TYPE_2__*) ;
 char const** g_strDirs ;
 int memcpy (int ,int *,int) ;
 int rewind (int *) ;
 void* safe_malloc (int) ;
 int strcat (char*,char const*) ;
 scalar_t__ strcmp (int ,char*) ;
 int strcpy (char*,char const*) ;
 int unzCloseCurrentFile (int ) ;
 scalar_t__ unzOpenCurrentFile (int ) ;
 int unzReadCurrentFile (int ,void*,size_t) ;
 int vfsFixDOSName (char*) ;

int vfsLoadFile( const char *filename, void **bufferptr, int index ){
 int i, count = 0;
 char tmp[NAME_MAX], fixed[NAME_MAX];
 char *lower;
 GSList *lst;


 if ( index == -1 ) {
  long len;
  FILE *f;

  f = fopen( filename, "rb" );
  if ( f == ((void*)0) ) {
   return -1;
  }

  fseek( f, 0, SEEK_END );
  len = ftell( f );
  rewind( f );

  *bufferptr = safe_malloc( len + 1 );
  if ( *bufferptr == ((void*)0) ) {
   return -1;
  }

  fread( *bufferptr, 1, len, f );
  fclose( f );


  ( (char*) ( *bufferptr ) )[len] = 0;

  return len;
 }

 *bufferptr = ((void*)0);
 strcpy( fixed, filename );
 vfsFixDOSName( fixed );
 lower = g_ascii_strdown( fixed, -1 );

 for ( i = 0; i < g_numDirs; i++ )
 {
  strcpy( tmp, g_strDirs[i] );
  strcat( tmp, filename );
  if ( access( tmp, R_OK ) == 0 ) {
   if ( count == index ) {
    long len;
    FILE *f;

    f = fopen( tmp, "rb" );
    if ( f == ((void*)0) ) {
     return -1;
    }

    fseek( f, 0, SEEK_END );
    len = ftell( f );
    rewind( f );

    *bufferptr = safe_malloc( len + 1 );
    if ( *bufferptr == ((void*)0) ) {
     return -1;
    }

    fread( *bufferptr, 1, len, f );
    fclose( f );


    ( (char*) ( *bufferptr ) )[len] = 0;

    return len;
   }

   count++;
  }
 }

 for ( lst = g_pakFiles; lst != ((void*)0); lst = g_slist_next( lst ) )
 {
  VFS_PAKFILE* file = (VFS_PAKFILE*)lst->data;

  if ( strcmp( file->name, lower ) != 0 ) {
   continue;
  }

  if ( count == index ) {
   memcpy( file->zipfile, &file->zipinfo, sizeof( unz_s ) );

   if ( unzOpenCurrentFile( file->zipfile ) != UNZ_OK ) {
    return -1;
   }

   *bufferptr = safe_malloc( file->size + 1 );

   ( (char*) ( *bufferptr ) )[file->size] = 0;

   i = unzReadCurrentFile( file->zipfile, *bufferptr, file->size );
   unzCloseCurrentFile( file->zipfile );
   if ( i < 0 ) {
    return -1;
   }
   else{
    g_free( lower );
    return file->size;
   }
  }

  count++;
 }
 g_free( lower );
 return -1;
}
