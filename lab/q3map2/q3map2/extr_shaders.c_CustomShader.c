
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char* shaderText; scalar_t__ implicitMap; char* implicitImagePath; char* shader; scalar_t__ custom; } ;
typedef TYPE_1__ shaderInfo_t ;
typedef int byte ;


 int Error (char*,int) ;
 scalar_t__ IM_BLEND ;
 scalar_t__ IM_MASKED ;
 scalar_t__ IM_OPAQUE ;
 int MAX_QPATH ;
 int MD5 (char*,size_t,unsigned char*) ;
 TYPE_1__* ShaderInfoForShader (char*) ;
 char* mapName ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 scalar_t__ qtrue ;
 char* safe_malloc (size_t) ;
 int sprintf (char*,char*,char*,...) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 size_t strlen (char*) ;
 char* strstr (char*,char*) ;

shaderInfo_t *CustomShader( shaderInfo_t *si, char *find, char *replace ){
 shaderInfo_t *csi;
 char shader[ MAX_QPATH ];
 char *s;
 int loc;
 byte digest[ 16 ];
 char *srcShaderText, temp[ 8192 ], shaderText[ 8192 ];



 if ( si == ((void*)0) ) {
  return ShaderInfoForShader( "default" );
 }


 srcShaderText = si->shaderText;


 if ( si->implicitMap == IM_OPAQUE ) {
  srcShaderText = temp;
  sprintf( temp, "\n"
        "{ // Q3Map2 defaulted (implicitMap)\n"
        "\t{\n"
        "\t\tmap $lightmap\n"
        "\t\trgbGen identity\n"
        "\t}\n"
        "\tq3map_styleMarker\n"
        "\t{\n"
        "\t\tmap %s\n"
        "\t\tblendFunc GL_DST_COLOR GL_ZERO\n"
        "\t\trgbGen identity\n"
        "\t}\n"
        "}\n",
     si->implicitImagePath );
 }


 else if ( si->implicitMap == IM_MASKED ) {
  srcShaderText = temp;
  sprintf( temp, "\n"
        "{ // Q3Map2 defaulted (implicitMask)\n"
        "\tcull none\n"
        "\t{\n"
        "\t\tmap %s\n"
        "\t\talphaFunc GE128\n"
        "\t\tdepthWrite\n"
        "\t}\n"
        "\t{\n"
        "\t\tmap $lightmap\n"
        "\t\trgbGen identity\n"
        "\t\tdepthFunc equal\n"
        "\t}\n"
        "\tq3map_styleMarker\n"
        "\t{\n"
        "\t\tmap %s\n"
        "\t\tblendFunc GL_DST_COLOR GL_ZERO\n"
        "\t\tdepthFunc equal\n"
        "\t\trgbGen identity\n"
        "\t}\n"
        "}\n",
     si->implicitImagePath,
     si->implicitImagePath );
 }


 else if ( si->implicitMap == IM_BLEND ) {
  srcShaderText = temp;
  sprintf( temp, "\n"
        "{ // Q3Map2 defaulted (implicitBlend)\n"
        "\tcull none\n"
        "\t{\n"
        "\t\tmap %s\n"
        "\t\tblendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA\n"
        "\t}\n"
        "\t{\n"
        "\t\tmap $lightmap\n"
        "\t\trgbGen identity\n"
        "\t\tblendFunc GL_DST_COLOR GL_ZERO\n"
        "\t}\n"
        "\tq3map_styleMarker\n"
        "}\n",
     si->implicitImagePath );
 }


 else if ( srcShaderText == ((void*)0) ) {
  srcShaderText = temp;
  sprintf( temp, "\n"
        "{ // Q3Map2 defaulted\n"
        "\t{\n"
        "\t\tmap $lightmap\n"
        "\t\trgbGen identity\n"
        "\t}\n"
        "\tq3map_styleMarker\n"
        "\t{\n"
        "\t\tmap %s.tga\n"
        "\t\tblendFunc GL_DST_COLOR GL_ZERO\n"
        "\t\trgbGen identity\n"
        "\t}\n"
        "}\n",
     si->shader );
 }


 if ( ( strlen( mapName ) + 1 + 32 ) > MAX_QPATH ) {
  Error( "Custom shader name length (%d) exceeded. Shorten your map name.\n", MAX_QPATH );
 }


 s = strstr( srcShaderText, find );
 if ( s == ((void*)0) ) {

  return si;
 }
 else
 {

  loc = s - srcShaderText;
  strcpy( shaderText, srcShaderText );
  shaderText[ loc ] = '\0';
  strcat( shaderText, replace );
  strcat( shaderText, &srcShaderText[ loc + strlen( find ) ] );
 }


 MD5( shaderText, strlen( shaderText ), (unsigned char *) &digest );


 sprintf( shader, "%s/%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X", mapName,
    digest[ 0 ], digest[ 1 ], digest[ 2 ], digest[ 3 ], digest[ 4 ], digest[ 5 ], digest[ 6 ], digest[ 7 ],
    digest[ 8 ], digest[ 9 ], digest[ 10 ], digest[ 11 ], digest[ 12 ], digest[ 13 ], digest[ 14 ], digest[ 15 ] );


 csi = ShaderInfoForShader( shader );


 if ( csi->custom ) {
  return csi;
 }


 memcpy( csi, si, sizeof( shaderInfo_t ) );
 strcpy( csi->shader, shader );
 csi->custom = qtrue;


 csi->shaderText = safe_malloc( strlen( shaderText ) + 1 );
 strcpy( csi->shaderText, shaderText );


 return csi;
}
