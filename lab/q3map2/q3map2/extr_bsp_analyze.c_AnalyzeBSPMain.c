
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
typedef int byte ;
typedef int bspPlane_t ;
typedef int bspNode_t ;
typedef int bspModel_t ;
typedef int bspLeaf_t ;
typedef int bspBrush_t ;
typedef int bspBrushSide_t ;
struct TYPE_5__ {int member_0; int member_1; char* member_2; int radix; int minCount; int name; } ;
typedef TYPE_2__ abspLumpTest_t ;
struct TYPE_6__ {char* ident; int version; TYPE_1__* lumps; } ;
typedef TYPE_3__ abspHeader_t ;
struct TYPE_4__ {int length; int offset; } ;


 int ExpandArg (char*) ;
 float LittleFloat (float) ;
 int LittleLong (int) ;
 int LoadFile (char*,void**) ;
 int Sys_Printf (char*,...) ;
 int memcpy (char*,char*,int) ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;
 int strcmp (char*,char*) ;
 int strcpy (char*,int ) ;
 scalar_t__ strstr (char*,char*) ;

int AnalyzeBSPMain( int argc, char **argv ){
 abspHeader_t *header;
 int size, i, version, offset, length, lumpInt, count;
 char ident[ 5 ];
 void *lump;
 float lumpFloat;
 char lumpString[ 1024 ], source[ 1024 ];
 qboolean lumpSwap = qfalse;
 abspLumpTest_t *lumpTest;
 static abspLumpTest_t lumpTests[] =
 {
  { sizeof( bspPlane_t ), 6, "IBSP LUMP_PLANES" },
  { sizeof( bspBrush_t ), 1, "IBSP LUMP_BRUSHES" },
  { 8, 6, "IBSP LUMP_BRUSHSIDES" },
  { sizeof( bspBrushSide_t ), 6, "RBSP LUMP_BRUSHSIDES" },
  { sizeof( bspModel_t ), 1, "IBSP LUMP_MODELS" },
  { sizeof( bspNode_t ), 2, "IBSP LUMP_NODES" },
  { sizeof( bspLeaf_t ), 1, "IBSP LUMP_LEAFS" },
  { 104, 3, "IBSP LUMP_DRAWSURFS" },
  { 44, 3, "IBSP LUMP_DRAWVERTS" },
  { 4, 6, "IBSP LUMP_DRAWINDEXES" },
  { 128 * 128 * 3, 1, "IBSP LUMP_LIGHTMAPS" },
  { 256 * 256 * 3, 1, "IBSP LUMP_LIGHTMAPS (256 x 256)" },
  { 512 * 512 * 3, 1, "IBSP LUMP_LIGHTMAPS (512 x 512)" },
  { 0, 0, ((void*)0) }
 };



 if ( argc < 1 ) {
  Sys_Printf( "Usage: q3map -analyze [-lumpswap] [-v] <mapname>\n" );
  return 0;
 }


 for ( i = 1; i < ( argc - 1 ); i++ )
 {

  if ( !strcmp( argv[ i ], "-lumpswap" ) ) {
   Sys_Printf( "Swapped lump structs enabled\n" );
   lumpSwap = qtrue;
  }
 }


 strcpy( source, ExpandArg( argv[ i ] ) );
 Sys_Printf( "Loading %s\n", source );


 size = LoadFile( source, (void**) &header );
 if ( size == 0 || header == ((void*)0) ) {
  Sys_Printf( "Unable to load %s.\n", source );
  return -1;
 }


 memcpy( ident, header->ident, 4 );
 ident[ 4 ] = '\0';
 version = LittleLong( header->version );

 Sys_Printf( "Identity:      %s\n", ident );
 Sys_Printf( "Version:       %d\n", version );
 Sys_Printf( "---------------------------------------\n" );


 for ( i = 0; i < 100; i++ )
 {

  if ( lumpSwap ) {
   offset = LittleLong( header->lumps[ i ].length );
   length = LittleLong( header->lumps[ i ].offset );
  }


  else
  {
   offset = LittleLong( header->lumps[ i ].offset );
   length = LittleLong( header->lumps[ i ].length );
  }


  lump = (byte*) header + offset;
  lumpInt = LittleLong( (int) *( (int*) lump ) );
  lumpFloat = LittleFloat( (float) *( (float*) lump ) );
  memcpy( lumpString, (char*) lump, ( length < 1024 ? length : 1024 ) );
  lumpString[ 1023 ] = '\0';


  Sys_Printf( "Lump:          %d\n", i );
  Sys_Printf( "Offset:        %d bytes\n", offset );
  Sys_Printf( "Length:        %d bytes\n", length );


  if ( length > 0 ) {

   Sys_Printf( "As hex:        %08X\n", lumpInt );
   Sys_Printf( "As int:        %d\n", lumpInt );
   Sys_Printf( "As float:      %f\n", lumpFloat );
   Sys_Printf( "As string:     %s\n", lumpString );


   if ( lumpString[ 0 ] == '{' && lumpString[ 2 ] == '"' ) {
    Sys_Printf( "Type guess:    IBSP LUMP_ENTITIES\n" );
   }
   else if ( strstr( lumpString, "textures/" ) ) {
    Sys_Printf( "Type guess:    IBSP LUMP_SHADERS\n" );
   }
   else
   {

    for ( lumpTest = lumpTests; lumpTest->radix > 0; lumpTest++ )
    {
     if ( ( length % lumpTest->radix ) != 0 ) {
      continue;
     }
     count = length / lumpTest->radix;
     if ( count < lumpTest->minCount ) {
      continue;
     }
     Sys_Printf( "Type guess:    %s (%d x %d)\n", lumpTest->name, count, lumpTest->radix );
    }
   }
  }

  Sys_Printf( "---------------------------------------\n" );


  if ( offset + length >= size ) {
   break;
  }
 }


 Sys_Printf( "Lump count:    %d\n", i + 1 );
 Sys_Printf( "File size:     %d bytes\n", size );


 return 0;
}
