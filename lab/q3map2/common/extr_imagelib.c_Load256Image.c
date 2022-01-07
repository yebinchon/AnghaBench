
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int byte ;
struct TYPE_2__ {int w; int h; } ;


 int Error (char*,char const*) ;
 int ExtractFileExtension (char const*,char*) ;
 int LoadBMP (char const*,int **,int **,int*,int*) ;
 int LoadLBM (char const*,int **,int **) ;
 int LoadPCX (char const*,int **,int **,int*,int*) ;
 int Q_stricmp (char*,char*) ;
 TYPE_1__ bmhd ;

void Load256Image( const char *name, byte **pixels, byte **palette, int *width, int *height ){
 char ext[128];

 ExtractFileExtension( name, ext );
 if ( !Q_stricmp( ext, "lbm" ) ) {
  LoadLBM( name, pixels, palette );
  if ( width ) {
   *width = bmhd.w;
  }
  if ( height ) {
   *height = bmhd.h;
  }
 }
 else if ( !Q_stricmp( ext, "pcx" ) ) {
  LoadPCX( name, pixels, palette, width, height );
 }
 else if ( !Q_stricmp( ext, "bmp" ) ) {
  LoadBMP( name, pixels, palette, width, height );
 }
 else{
  Error( "%s doesn't have a known image extension", name );
 }
}
