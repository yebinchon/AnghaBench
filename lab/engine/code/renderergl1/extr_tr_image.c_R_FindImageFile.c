
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int qboolean ;
typedef int new_name ;
typedef int imgType_t ;
typedef int imgFlags_t ;
struct TYPE_10__ {char* imgName; int flags; struct TYPE_10__* next; } ;
typedef TYPE_2__ image_t ;
typedef int byte ;
struct TYPE_12__ {int (* Free ) (int *) ;int Malloc; int (* Printf ) (int ,char*,char const*,int ,int ) ;} ;
struct TYPE_9__ {scalar_t__ (* modify_rgba_texture ) (int ,char const*,int *,int,int) ;int (* load_texture ) (int ,char const*,int **,int*,int*,int ) ;scalar_t__ (* replace_texture_name ) (int ,char const*,char*,int) ;} ;
struct TYPE_11__ {int userdata; TYPE_1__ hooks; } ;
typedef scalar_t__ GLenum ;
typedef TYPE_3__ DeepmindContext ;


 int COM_StripExtension (char const*,char*,int) ;
 scalar_t__ GL_RGBA8 ;
 int MAX_QPATH ;
 int PRINT_DEVELOPER ;
 int Q_strcat (char*,int,char*) ;
 TYPE_2__* R_CreateImageInternal (char*,int *,int,int,int,int ,int ,int ,int ) ;
 int R_LoadDDS (char*,int **,int*,int*,scalar_t__*,int*) ;
 int R_LoadImage (char const*,int **,int*,int*) ;
 TYPE_3__* dmlab_context () ;
 long generateHashValue (char const*) ;
 TYPE_2__** hashTable ;
 int qfalse ;
 int qtrue ;
 TYPE_4__ ri ;
 scalar_t__ strcmp (char const*,char*) ;
 int stub1 (int ,char*,char const*,int ,int ) ;
 scalar_t__ stub2 (int ,char const*,char*,int) ;
 int stub3 (int ,char const*,int **,int*,int*,int ) ;
 int stub4 (int *) ;
 scalar_t__ stub5 (int ,char const*,int *,int,int) ;
 int stub6 (int *) ;

image_t *R_FindImageFile( const char *name, imgType_t type, imgFlags_t flags )
{
 DeepmindContext *ctx = dmlab_context();
 char new_name[MAX_QPATH];
 char dds_name[MAX_QPATH];
 const char *file_name = name;
 image_t *image;
 int width = 0, height = 0, numMips = 0;
 byte *pic = ((void*)0);
 long hash;
 GLenum picFormat;
 qboolean capMaxSize = qtrue;

 if (!name) {
  return ((void*)0);
 }

 hash = generateHashValue(name);




 for (image=hashTable[hash]; image; image=image->next) {
  if ( !strcmp( name, image->imgName ) ) {

   if ( strcmp( name, "*white" ) ) {
    if ( image->flags != flags ) {
     ri.Printf( PRINT_DEVELOPER, "WARNING: reused image %s with mixed flags (%i vs %i)\n", name, image->flags, flags );
    }
   }
   return image;
  }
 }

 if ( ctx->hooks.replace_texture_name( ctx->userdata, name, new_name, sizeof( new_name ) ) ) {
  file_name = new_name;
 }



 if ( !ctx->hooks.load_texture( ctx->userdata, file_name, &pic, &width, &height, ri.Malloc ) ) {

  COM_StripExtension( file_name, dds_name, MAX_QPATH );
  Q_strcat( dds_name, MAX_QPATH, ".dds" );

  R_LoadDDS( dds_name, &pic, &width, &height, &picFormat, &numMips );



  if ( pic != ((void*)0) && picFormat != GL_RGBA8 ) {
   ri.Free( pic );
   pic = ((void*)0);
   numMips = 0;
  }

  if ( pic == ((void*)0) ) {
   R_LoadImage( file_name, &pic, &width, &height );
  }
 } else {
  capMaxSize = qfalse;
 }

 if ( pic == ((void*)0) ) {
  return ((void*)0);
 }


 if ( ctx->hooks.modify_rgba_texture( ctx->userdata, name, pic, width, height ) ) {
  numMips = 1;
  capMaxSize = qfalse;
 }

 image = R_CreateImageInternal( ( char * ) name, pic, width, height, numMips, type, flags, 0, capMaxSize );
 ri.Free( pic );
 return image;
}
