
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
typedef int byte ;
struct TYPE_4__ {int (* ImageLoader ) (char*,int **,int*,int*) ;int ext; } ;
struct TYPE_3__ {int (* Printf ) (int ,char*,char const*,char*) ;} ;


 char* COM_GetExtension (char*) ;
 int COM_StripExtension (char const*,char*,int) ;
 int MAX_QPATH ;
 int PRINT_DEVELOPER ;
 int Q_stricmp (char const*,int ) ;
 int Q_strncpyz (char*,char const*,int) ;
 TYPE_2__* imageLoaders ;
 int numImageLoaders ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;
 TYPE_1__ ri ;
 int stub1 (char*,int **,int*,int*) ;
 int stub2 (char*,int **,int*,int*) ;
 int stub3 (int ,char*,char const*,char*) ;
 char* va (char*,char*,int ) ;

void R_LoadImage( const char *name, byte **pic, int *width, int *height )
{
 qboolean orgNameFailed = qfalse;
 int orgLoader = -1;
 int i;
 char localName[ MAX_QPATH ];
 const char *ext;
 char *altName;

 *pic = ((void*)0);
 *width = 0;
 *height = 0;

 Q_strncpyz( localName, name, MAX_QPATH );

 ext = COM_GetExtension( localName );

 if( *ext )
 {

  for( i = 0; i < numImageLoaders; i++ )
  {
   if( !Q_stricmp( ext, imageLoaders[ i ].ext ) )
   {

    imageLoaders[ i ].ImageLoader( localName, pic, width, height );
    break;
   }
  }


  if( i < numImageLoaders )
  {
   if( *pic == ((void*)0) )
   {


    orgNameFailed = qtrue;
    orgLoader = i;
    COM_StripExtension( name, localName, MAX_QPATH );
   }
   else
   {

    return;
   }
  }
 }



 for( i = 0; i < numImageLoaders; i++ )
 {
  if (i == orgLoader)
   continue;

  altName = va( "%s.%s", localName, imageLoaders[ i ].ext );


  imageLoaders[ i ].ImageLoader( altName, pic, width, height );

  if( *pic )
  {
   if( orgNameFailed )
   {
    ri.Printf( PRINT_DEVELOPER, "WARNING: %s not present, using %s instead\n",
      name, altName );
   }

   break;
  }
 }
}
