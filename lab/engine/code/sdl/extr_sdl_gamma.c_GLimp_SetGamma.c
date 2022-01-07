
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vinfo ;
typedef int Uint16 ;
struct TYPE_9__ {int deviceSupportsGamma; } ;
struct TYPE_8__ {scalar_t__ integer; } ;
struct TYPE_7__ {int (* Printf ) (int ,char*,int ) ;} ;
struct TYPE_6__ {int dwOSVersionInfoSize; int dwMajorVersion; scalar_t__ dwPlatformId; } ;
typedef TYPE_1__ OSVERSIONINFO ;


 int GetVersionEx (TYPE_1__*) ;
 int PRINT_DEVELOPER ;
 int SDL_GetError () ;
 scalar_t__ SDL_SetWindowGammaRamp (int ,int*,int*,int*) ;
 int SDL_window ;
 scalar_t__ VER_PLATFORM_WIN32_NT ;
 TYPE_4__ glConfig ;
 TYPE_3__* r_ignorehwgamma ;
 TYPE_2__ ri ;
 int stub1 (int ,char*) ;
 int stub2 (int ,char*,int ) ;

void GLimp_SetGamma( unsigned char red[256], unsigned char green[256], unsigned char blue[256] )
{
 Uint16 table[3][256];
 int i, j;

 if( !glConfig.deviceSupportsGamma || r_ignorehwgamma->integer > 0 )
  return;

 for (i = 0; i < 256; i++)
 {
  table[0][i] = ( ( ( Uint16 ) red[i] ) << 8 ) | red[i];
  table[1][i] = ( ( ( Uint16 ) green[i] ) << 8 ) | green[i];
  table[2][i] = ( ( ( Uint16 ) blue[i] ) << 8 ) | blue[i];
 }
 for (j = 0; j < 3; j++)
 {
  for (i = 1; i < 256; i++)
  {
   if (table[j][i] < table[j][i-1])
    table[j][i] = table[j][i-1];
  }
 }

 if (SDL_SetWindowGammaRamp(SDL_window, table[0], table[1], table[2]) < 0)
 {
  ri.Printf( PRINT_DEVELOPER, "SDL_SetWindowGammaRamp() failed: %s\n", SDL_GetError() );
 }
}
