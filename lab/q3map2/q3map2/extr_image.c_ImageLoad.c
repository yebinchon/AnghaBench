
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int refCount; char* name; scalar_t__ width; scalar_t__ height; char* filename; int * pixels; } ;
typedef TYPE_1__ image_t ;
typedef int ddsPF_t ;
typedef int ddsBuffer_t ;
typedef char byte ;


 int DDSGetInfo (int *,int *,int *,int *) ;
 int Error (char*,int) ;
 TYPE_1__* ImageFind (char*) ;
 int ImageInit () ;
 int LoadDDSBuffer (char*,int,int **,scalar_t__*,scalar_t__*) ;
 int LoadJPGBuff (char*,int,int **,scalar_t__*,scalar_t__*) ;
 int LoadPNGBuffer (char*,int,int **,scalar_t__*,scalar_t__*) ;
 int LoadTGABuffer (char*,char*,int **,scalar_t__*,scalar_t__*) ;
 int MAX_IMAGES ;
 int SYS_WRN ;
 int StripExtension (char*) ;
 int Sys_FPrintf (int ,char*,unsigned char*) ;
 int Sys_Printf (char*,int ) ;
 int WriteTGA (char*,int *,scalar_t__,scalar_t__) ;
 int free (char*) ;
 TYPE_1__* images ;
 int numImages ;
 void* safe_malloc (scalar_t__) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char*) ;
 int vfsLoadFile (char const*,void**,int ) ;

image_t *ImageLoad( const char *filename ){
 int i;
 image_t *image;
 char name[ 1024 ];
 int size;
 byte *buffer = ((void*)0);



 ImageInit();


 if ( filename == ((void*)0) || filename[ 0 ] == '\0' ) {
  return ((void*)0);
 }


 strcpy( name, filename );
 StripExtension( name );


 image = ImageFind( name );
 if ( image != ((void*)0) ) {
  image->refCount++;
  return image;
 }


 image = ((void*)0);
 for ( i = 0; i < MAX_IMAGES; i++ )
 {
  if ( images[ i ].name == ((void*)0) ) {
   image = &images[ i ];
   break;
  }
 }


 if ( image == ((void*)0) ) {
  Error( "MAX_IMAGES (%d) exceeded, there are too many image files referenced by the map.", MAX_IMAGES );
 }


 image->name = safe_malloc( strlen( name ) + 1 );
 strcpy( image->name, name );


 StripExtension( name );
 strcat( name, ".tga" );
 size = vfsLoadFile( (const char*) name, (void**) &buffer, 0 );
 if ( size > 0 ) {
  LoadTGABuffer( buffer, buffer + size, &image->pixels, &image->width, &image->height );
 }
 else
 {

  StripExtension( name );
  strcat( name, ".png" );
  size = vfsLoadFile( (const char*) name, (void**) &buffer, 0 );
  if ( size > 0 ) {
   LoadPNGBuffer( buffer, size, &image->pixels, &image->width, &image->height );
  }
  else
  {

   StripExtension( name );
   strcat( name, ".jpg" );
   size = vfsLoadFile( (const char*) name, (void**) &buffer, 0 );
   if ( size > 0 ) {
    if ( LoadJPGBuff( buffer, size, &image->pixels, &image->width, &image->height ) == -1 && image->pixels != ((void*)0) ) {
     Sys_FPrintf( SYS_WRN, "WARNING: LoadJPGBuff: %s\n", (unsigned char*) image->pixels );
    }
   }
   else
   {

    StripExtension( name );
    strcat( name, ".dds" );
    size = vfsLoadFile( (const char*) name, (void**) &buffer, 0 );
    if ( size > 0 ) {
     LoadDDSBuffer( buffer, size, &image->pixels, &image->width, &image->height );



     {
      ddsPF_t pf;
      DDSGetInfo( (ddsBuffer_t*) buffer, ((void*)0), ((void*)0), &pf );
      Sys_Printf( "pf = %d\n", pf );
      if ( image->width > 0 ) {
       StripExtension( name );
       strcat( name, "_converted.tga" );
       WriteTGA( "C:\\games\\quake3\\baseq3\\textures\\rad\\dds_converted.tga", image->pixels, image->width, image->height );
      }
     }

    }
   }
  }
 }


 free( buffer );


 if ( size <= 0 || image->width <= 0 || image->height <= 0 || image->pixels == ((void*)0) ) {


  free( image->name );
  image->name = ((void*)0);
  return ((void*)0);
 }


 image->filename = safe_malloc( strlen( name ) + 1 );
 strcpy( image->filename, name );


 image->refCount = 1;
 numImages++;


 return image;
}
