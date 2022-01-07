
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_18__ {float shader; } ;
typedef TYPE_1__ shaderInfo_t ;
typedef scalar_t__ qboolean ;
struct TYPE_19__ {scalar_t__ entityNum; int castShadows; int recvShadows; float lightmapScale; TYPE_1__* celShader; struct TYPE_19__* next; } ;
typedef TYPE_2__ parseMesh_t ;
struct TYPE_20__ {char* key; char* value; struct TYPE_20__* next; } ;
typedef TYPE_3__ epair_t ;
struct TYPE_21__ {scalar_t__ entityNum; int castShadows; int recvShadows; float lightmapScale; TYPE_1__* celShader; struct TYPE_21__* next; } ;
typedef TYPE_4__ brush_t ;
struct TYPE_22__ {scalar_t__ mapEntityNum; scalar_t__* origin; TYPE_2__* patches; TYPE_4__* brushes; TYPE_3__* epairs; } ;


 int AdjustBrushesForOrigin (TYPE_5__*) ;
 scalar_t__ BPRIMIT_NEWBRUSHES ;
 scalar_t__ BPRIMIT_OLDBRUSHES ;
 int ENTITY_CAST_SHADOWS ;
 int ENTITY_RECV_SHADOWS ;
 int Error (char*) ;
 float FloatForKey (TYPE_5__*,char*) ;
 int GetEntityShadowFlags (TYPE_5__*,int *,int*,int*) ;
 int GetToken (scalar_t__) ;
 int GetVectorForKey (TYPE_5__*,char*,scalar_t__*) ;
 int LoadEntityIndexMap (TYPE_5__*) ;
 size_t MAX_MAP_ENTITIES ;
 int MAX_QPATH ;
 int MoveBrushesToWorld (TYPE_5__*) ;
 int ParseBrush (scalar_t__) ;
 TYPE_3__* ParseEPair () ;
 int ParsePatch (scalar_t__) ;
 int Q_stricmp (char*,char const*) ;
 scalar_t__ Q_strncasecmp (char const*,char*,int) ;
 int SYS_WRN ;
 int SetEntityBounds (TYPE_5__*) ;
 TYPE_1__* ShaderInfoForShader (char*) ;
 int Sys_FPrintf (int ,char*,...) ;
 int Sys_Printf (char*,scalar_t__,char const*,float) ;
 int UnGetToken () ;
 char* ValueForKey (TYPE_5__*,char*) ;
 int WORLDSPAWN_CAST_SHADOWS ;
 int WORLDSPAWN_RECV_SHADOWS ;
 TYPE_5__* entities ;
 scalar_t__ entitySourceBrushes ;
 scalar_t__ g_bBrushPrimit ;
 TYPE_5__* mapEnt ;
 int memset (TYPE_5__*,int ,int) ;
 size_t numEntities ;
 scalar_t__ numMapEntities ;
 int numMapPatches ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;
 int scriptline ;
 int sprintf (char*,char*,char const*) ;
 scalar_t__ strcmp (char*,char*) ;
 char* token ;

__attribute__((used)) static qboolean ParseMapEntity( qboolean onlyLights ){
 epair_t *ep;
 const char *classname, *value;
 float lightmapScale;
 char shader[ MAX_QPATH ];
 shaderInfo_t *celShader = ((void*)0);
 brush_t *brush;
 parseMesh_t *patch;
 qboolean funcGroup;
 int castShadows, recvShadows;



 if ( !GetToken( qtrue ) ) {
  return qfalse;
 }


 if ( strcmp( token, "{" ) ) {
  Sys_FPrintf( SYS_WRN, "WARNING: ParseEntity: { not found, found %s on line %d - last entity was at: <%4.2f, %4.2f, %4.2f>...\n"
     "Continuing to process map, but resulting BSP may be invalid.\n",
     token, scriptline, entities[ numEntities ].origin[ 0 ], entities[ numEntities ].origin[ 1 ], entities[ numEntities ].origin[ 2 ] );
  return qfalse;
 }


 if ( numEntities >= MAX_MAP_ENTITIES ) {
  Error( "numEntities == MAX_MAP_ENTITIES" );
 }


 entitySourceBrushes = 0;
 mapEnt = &entities[ numEntities ];
 numEntities++;
 memset( mapEnt, 0, sizeof( *mapEnt ) );


 mapEnt->mapEntityNum = numMapEntities;
 numMapEntities++;


 while ( 1 )
 {

  if ( !GetToken( qtrue ) ) {
   Sys_FPrintf( SYS_WRN, "WARNING: ParseEntity: EOF without closing brace\n"
      "Continuing to process map, but resulting BSP may be invalid.\n" );
   return qfalse;
  }

  if ( !strcmp( token, "}" ) ) {
   break;
  }

  if ( !strcmp( token, "{" ) ) {

   if ( !GetToken( qtrue ) ) {
    break;
   }


   if ( !strcmp( token, "patchDef2" ) ) {
    numMapPatches++;
    ParsePatch( onlyLights );
   }
   else if ( !strcmp( token, "terrainDef" ) ) {

    Sys_FPrintf( SYS_WRN, "WARNING: Terrain entity parsing not supported in this build.\n" );
   }
   else if ( !strcmp( token, "brushDef" ) ) {
    if ( g_bBrushPrimit == BPRIMIT_OLDBRUSHES ) {
     Error( "Old brush format not allowed in new brush format map" );
    }
    g_bBrushPrimit = BPRIMIT_NEWBRUSHES;


    ParseBrush( onlyLights );
   }
   else
   {
    if ( g_bBrushPrimit == BPRIMIT_NEWBRUSHES ) {
     Error( "New brush format not allowed in old brush format map" );
    }
    g_bBrushPrimit = BPRIMIT_OLDBRUSHES;


    UnGetToken();
    ParseBrush( onlyLights );
   }
   entitySourceBrushes++;
  }
  else
  {

   ep = ParseEPair();


   if ( ep->key[ 0 ] != '\0' && ep->value[ 0 ] != '\0' ) {
    ep->next = mapEnt->epairs;
    mapEnt->epairs = ep;
   }
  }
 }


 classname = ValueForKey( mapEnt, "classname" );


 if ( onlyLights ) {
  if ( Q_strncasecmp( classname, "light", 5 ) ) {
   numEntities--;
   return qtrue;
  }
  value = ValueForKey( mapEnt, "noradiosity" );
  if ( value[ 0 ] == '1' ) {
   numEntities--;
   return qtrue;
  }
 }


 if ( !Q_stricmp( "func_group", classname ) ) {
  funcGroup = qtrue;
 }
 else{
  funcGroup = qfalse;
 }


 if ( funcGroup || mapEnt->mapEntityNum == 0 ) {

  castShadows = WORLDSPAWN_CAST_SHADOWS;
  recvShadows = WORLDSPAWN_RECV_SHADOWS;
 }


 else
 {

  castShadows = ENTITY_CAST_SHADOWS;
  recvShadows = ENTITY_RECV_SHADOWS;
 }


 GetEntityShadowFlags( mapEnt, ((void*)0), &castShadows, &recvShadows );


 if ( strcmp( "", ValueForKey( mapEnt, "lightmapscale" ) ) ||
   strcmp( "", ValueForKey( mapEnt, "_lightmapscale" ) ) ) {

  lightmapScale = FloatForKey( mapEnt, "lightmapscale" );
  if ( lightmapScale <= 0.0f ) {
   lightmapScale = FloatForKey( mapEnt, "_lightmapscale" );
  }
  if ( lightmapScale > 0.0f ) {
   Sys_Printf( "Entity %d (%s) has lightmap scale of %.4f\n", mapEnt->mapEntityNum, classname, lightmapScale );
  }
 }
 else{
  lightmapScale = 0.0f;
 }


 value = ValueForKey( mapEnt, "_celshader" );
 if ( value[ 0 ] == '\0' ) {
  value = ValueForKey( &entities[ 0 ], "_celshader" );
 }
 if ( value[ 0 ] != '\0' ) {
  sprintf( shader, "textures/%s", value );
  celShader = ShaderInfoForShader( shader );
  Sys_Printf( "Entity %d (%s) has cel shader %s\n", mapEnt->mapEntityNum, classname, celShader->shader );
 }
 else{
  celShader = ((void*)0);
 }


 for ( brush = mapEnt->brushes; brush != ((void*)0); brush = brush->next )
 {
  brush->entityNum = mapEnt->mapEntityNum;
  brush->castShadows = castShadows;
  brush->recvShadows = recvShadows;
  brush->lightmapScale = lightmapScale;
  brush->celShader = celShader;
 }

 for ( patch = mapEnt->patches; patch != ((void*)0); patch = patch->next )
 {
  patch->entityNum = mapEnt->mapEntityNum;
  patch->castShadows = castShadows;
  patch->recvShadows = recvShadows;
  patch->lightmapScale = lightmapScale;
  patch->celShader = celShader;
 }


 SetEntityBounds( mapEnt );


 LoadEntityIndexMap( mapEnt );


 GetVectorForKey( mapEnt, "origin", mapEnt->origin );
 if ( mapEnt->origin[ 0 ] || mapEnt->origin[ 1 ] || mapEnt->origin[ 2 ] ) {
  AdjustBrushesForOrigin( mapEnt );
 }


 if ( !Q_stricmp( "group_info", classname ) ) {
  numEntities--;
  return qtrue;
 }


 if ( funcGroup ) {
  MoveBrushesToWorld( mapEnt );
  numEntities--;
  return qtrue;
 }


 return qtrue;
}
