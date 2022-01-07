
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef scalar_t__* vec3_t ;
struct TYPE_17__ {scalar_t__ si; } ;
typedef TYPE_1__ surfaceInfo_t ;
struct TYPE_18__ {int* outLightmapNums; scalar_t__* styles; scalar_t__ used; int customWidth; int customHeight; int* lightmapX; int* lightmapY; int w; int h; int numLightSurfaces; int firstLightSurface; float** solidColor; int brightness; scalar_t__* solid; int ** twins; } ;
typedef TYPE_2__ rawLightmap_t ;
typedef scalar_t__ qboolean ;
struct TYPE_19__ {scalar_t__ freeLuxels; int customWidth; int customHeight; int numShaders; scalar_t__* shaders; int* lightBits; int* bspLightBytes; int* bspDirBytes; int numLightmaps; scalar_t__ extLightmapNum; } ;
typedef TYPE_3__ outLightmap_t ;
typedef int byte ;
struct TYPE_20__ {scalar_t__ load; } ;


 scalar_t__ ApproximateLightmap (TYPE_2__*) ;
 float* BSP_DELUXEL (int,int) ;
 float* BSP_LUXEL (int,int,int) ;
 int ColorToBytes (scalar_t__*,int*,int ) ;
 int Error (char*) ;
 scalar_t__ LS_NONE ;
 scalar_t__ LoadRBSPFile ;
 int MAX_LIGHTMAPS ;
 int MAX_LIGHTMAP_SHADERS ;
 int SetupOutLightmap (TYPE_2__*,TYPE_3__*) ;
 scalar_t__ TestOutLightmapStamp (TYPE_2__*,int,TYPE_3__*,int,int) ;
 int VectorCopy (float*,scalar_t__*) ;
 scalar_t__ VectorNormalize (float*,scalar_t__*) ;
 int VectorSet (scalar_t__*,float,float,float) ;
 scalar_t__ debug ;
 scalar_t__ deluxemap ;
 int free (TYPE_3__*) ;
 TYPE_9__* game ;
 size_t* lightSurfaces ;
 int memcpy (TYPE_3__*,TYPE_3__*,int) ;
 scalar_t__* minLight ;
 int numLightmapShaders ;
 int numOutLightmaps ;
 TYPE_3__* outLightmaps ;
 scalar_t__ qfalse ;
 TYPE_3__* safe_malloc (int) ;
 TYPE_1__* surfaceInfos ;

__attribute__((used)) static void FindOutLightmaps( rawLightmap_t *lm ){
 int i, j, lightmapNum, xMax, yMax, x, y, sx, sy, ox, oy, offset, temp;
 outLightmap_t *olm;
 surfaceInfo_t *info;
 float *luxel, *deluxel;
 vec3_t color, direction;
 byte *pixel;
 qboolean ok;



 for ( lightmapNum = 0; lightmapNum < MAX_LIGHTMAPS; lightmapNum++ )
  lm->outLightmapNums[ lightmapNum ] = -3;


 if ( ApproximateLightmap( lm ) ) {
  return;
 }


 for ( lightmapNum = 0; lightmapNum < MAX_LIGHTMAPS; lightmapNum++ )
 {

  if ( lm->styles[ lightmapNum ] == LS_NONE ) {
   continue;
  }


  if ( lm->twins[ lightmapNum ] != ((void*)0) ) {
   continue;
  }


  ok = qfalse;
  if ( lightmapNum > 0 && outLightmaps != ((void*)0) ) {

   for ( j = 0; j < 2; j++ )
   {

    for ( i = 0; i < numOutLightmaps; i++ )
    {

     olm = &outLightmaps[ i ];


     if ( olm->freeLuxels < lm->used ) {
      continue;
     }


     if ( olm->customWidth != lm->customWidth ||
       olm->customHeight != lm->customHeight ) {
      continue;
     }


     if ( j == 0 ) {
      x = lm->lightmapX[ 0 ];
      y = lm->lightmapY[ 0 ];
      ok = TestOutLightmapStamp( lm, lightmapNum, olm, x, y );
     }


     else
     {
      for ( sy = -1; sy <= 1; sy++ )
      {
       for ( sx = -1; sx <= 1; sx++ )
       {
        x = lm->lightmapX[ 0 ] + sx * ( olm->customWidth >> 1 );
        y = lm->lightmapY[ 0 ] + sy * ( olm->customHeight >> 1 );
        ok = TestOutLightmapStamp( lm, lightmapNum, olm, x, y );

        if ( ok ) {
         break;
        }
       }

       if ( ok ) {
        break;
       }
      }
     }

     if ( ok ) {
      break;
     }
    }

    if ( ok ) {
     break;
    }
   }
  }


  if ( ok == qfalse ) {

   x = 0;
   y = 0;


   for ( i = 0; i < numOutLightmaps; i++ )
   {

    olm = &outLightmaps[ i ];


    if ( olm->freeLuxels < lm->used ) {
     continue;
    }


    if ( olm->customWidth != lm->customWidth ||
      olm->customHeight != lm->customHeight ) {
     continue;
    }


    if ( lm->solid[ lightmapNum ] ) {
     xMax = olm->customWidth;
     yMax = olm->customHeight;
    }
    else
    {
     xMax = ( olm->customWidth - lm->w ) + 1;
     yMax = ( olm->customHeight - lm->h ) + 1;
    }


    for ( y = 0; y < yMax; y++ )
    {
     for ( x = 0; x < xMax; x++ )
     {

      ok = TestOutLightmapStamp( lm, lightmapNum, olm, x, y );

      if ( ok ) {
       break;
      }
     }

     if ( ok ) {
      break;
     }
    }

    if ( ok ) {
     break;
    }


    x = 0;
    y = 0;
   }
  }


  if ( ok == qfalse ) {

   numOutLightmaps += 2;
   olm = safe_malloc( numOutLightmaps * sizeof( outLightmap_t ) );
   if ( !olm )
   {
    Error( "FindOutLightmaps: Failed to allocate memory.\n" );
   }

   if ( outLightmaps != ((void*)0) && numOutLightmaps > 2 ) {
    memcpy( olm, outLightmaps, ( numOutLightmaps - 2 ) * sizeof( outLightmap_t ) );
    free( outLightmaps );
   }
   outLightmaps = olm;


   SetupOutLightmap( lm, &outLightmaps[ numOutLightmaps - 2 ] );
   SetupOutLightmap( lm, &outLightmaps[ numOutLightmaps - 1 ] );


   i = numOutLightmaps - 2;
   olm = &outLightmaps[ i ];


   if ( lightmapNum > 0 ) {
    x = lm->lightmapX[ 0 ];
    y = lm->lightmapY[ 0 ];
   }
  }


  if ( lightmapNum > 0 && game->load != LoadRBSPFile ) {
   olm->extLightmapNum = 0;
  }


  lm->outLightmapNums[ lightmapNum ] = i;
  lm->lightmapX[ lightmapNum ] = x;
  lm->lightmapY[ lightmapNum ] = y;
  olm->numLightmaps++;


  for ( i = 0; i < lm->numLightSurfaces; i++ )
  {

   info = &surfaceInfos[ lightSurfaces[ lm->firstLightSurface + i ] ];


   for ( j = 0; j < olm->numShaders; j++ )
   {
    if ( olm->shaders[ j ] == info->si ) {
     break;
    }
   }


   if ( j >= olm->numShaders && olm->numShaders < MAX_LIGHTMAP_SHADERS ) {
    olm->shaders[ olm->numShaders ] = info->si;
    olm->numShaders++;
    numLightmapShaders++;
   }
  }


  if ( lm->solid[ lightmapNum ] ) {
   xMax = 1;
   yMax = 1;
  }
  else
  {
   xMax = lm->w;
   yMax = lm->h;
  }


  for ( y = 0; y < yMax; y++ )
  {
   for ( x = 0; x < xMax; x++ )
   {

    luxel = BSP_LUXEL( lightmapNum, x, y );
    deluxel = BSP_DELUXEL( x, y );
    if ( luxel[ 0 ] < 0.0f && !lm->solid[ lightmapNum ] ) {
     continue;
    }


    if ( lm->solid[ lightmapNum ] ) {
     if ( debug ) {
      VectorSet( color, 255.0f, 0.0f, 0.0f );
     }
     else{
      VectorCopy( lm->solidColor[ lightmapNum ], color );
     }
    }
    else{
     VectorCopy( luxel, color );
    }


    if ( lightmapNum == 0 ) {
     for ( i = 0; i < 3; i++ )
     {
      if ( color[ i ] < minLight[ i ] ) {
       color[ i ] = minLight[ i ];
      }
     }
    }


    ox = x + lm->lightmapX[ lightmapNum ];
    oy = y + lm->lightmapY[ lightmapNum ];
    offset = ( oy * olm->customWidth ) + ox;


    olm->lightBits[ offset >> 3 ] |= ( 1 << ( offset & 7 ) );
    olm->freeLuxels--;


    pixel = olm->bspLightBytes + ( ( ( oy * olm->customWidth ) + ox ) * 3 );
    ColorToBytes( color, pixel, lm->brightness );


    if ( deluxemap ) {

     if ( VectorNormalize( deluxel, direction ) ) {

      pixel = olm->bspDirBytes + ( ( ( oy * olm->customWidth ) + ox ) * 3 );
      for ( i = 0; i < 3; i++ )
      {
       temp = ( direction[ i ] + 1.0f ) * 127.5f;
       if ( temp < 0 ) {
        pixel[ i ] = 0;
       }
       else if ( temp > 255 ) {
        pixel[ i ] = 255;
       }
       else{
        pixel[ i ] = temp;
       }
      }
     }
    }
   }
  }
 }
}
