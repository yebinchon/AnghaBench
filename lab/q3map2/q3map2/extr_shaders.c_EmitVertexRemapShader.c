
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int byte ;


 int MD5 (char*,int ,unsigned char*) ;
 int SetKeyValue (int *,char*,char*) ;
 int * entities ;
 int sprintf (char*,char*,...) ;
 int strlen (char*) ;

void EmitVertexRemapShader( char *from, char *to ){
 byte digest[ 16 ];
 char key[ 64 ], value[ 256 ];



 if ( from == ((void*)0) || from[ 0 ] == '\0' ||
   to == ((void*)0) || to[ 0 ] == '\0' ) {
  return;
 }


 sprintf( value, "%s;%s", from, to );


 MD5( value, strlen( value ), (unsigned char *) &digest );



 sprintf( key, "vertexremapshader%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X",
    digest[ 0 ], digest[ 1 ], digest[ 2 ], digest[ 3 ], digest[ 4 ], digest[ 5 ], digest[ 6 ], digest[ 7 ],
    digest[ 8 ], digest[ 9 ], digest[ 10 ], digest[ 11 ], digest[ 12 ], digest[ 13 ], digest[ 14 ] );


 SetKeyValue( &entities[ 0 ], key, value );
}
