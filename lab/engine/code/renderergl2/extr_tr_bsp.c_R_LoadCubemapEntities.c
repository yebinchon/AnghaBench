
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int * vec3_t ;
typedef int spawnVarChars ;
typedef scalar_t__ qboolean ;
struct TYPE_6__ {char* name; float parallaxRadius; int origin; } ;
typedef TYPE_1__ cubemap_t ;
struct TYPE_8__ {TYPE_1__* (* Hunk_Alloc ) (int,int ) ;} ;
struct TYPE_7__ {int numCubemaps; TYPE_1__* cubemaps; } ;


 int MAX_QPATH ;
 int MAX_SPAWN_VARS ;
 int Q_stricmp (char*,char*) ;
 int Q_strncpyz (char*,char*,int) ;
 scalar_t__ R_ParseSpawnVars (char*,int,int*,char***) ;
 int VectorCopy (int *,int ) ;
 int h_low ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;
 TYPE_4__ ri ;
 int sscanf (char*,char*,float*,...) ;
 TYPE_1__* stub1 (int,int ) ;
 TYPE_2__ tr ;

void R_LoadCubemapEntities(char *cubemapEntityName)
{
 char spawnVarChars[2048];
 int numSpawnVars;
 char *spawnVars[MAX_SPAWN_VARS][2];
 int numCubemaps = 0;


 numCubemaps = 0;
 while(R_ParseSpawnVars(spawnVarChars, sizeof(spawnVarChars), &numSpawnVars, spawnVars))
 {
  int i;

  for (i = 0; i < numSpawnVars; i++)
  {
   if (!Q_stricmp(spawnVars[i][0], "classname") && !Q_stricmp(spawnVars[i][1], cubemapEntityName))
    numCubemaps++;
  }
 }

 if (!numCubemaps)
  return;

 tr.numCubemaps = numCubemaps;
 tr.cubemaps = ri.Hunk_Alloc(tr.numCubemaps * sizeof(*tr.cubemaps), h_low);
 memset(tr.cubemaps, 0, tr.numCubemaps * sizeof(*tr.cubemaps));

 numCubemaps = 0;
 while(R_ParseSpawnVars(spawnVarChars, sizeof(spawnVarChars), &numSpawnVars, spawnVars))
 {
  int i;
  char name[MAX_QPATH];
  qboolean isCubemap = qfalse;
  qboolean originSet = qfalse;
  vec3_t origin;
  float parallaxRadius = 1000.0f;

  name[0] = '\0';
  for (i = 0; i < numSpawnVars; i++)
  {
   if (!Q_stricmp(spawnVars[i][0], "classname") && !Q_stricmp(spawnVars[i][1], cubemapEntityName))
    isCubemap = qtrue;

   if (!Q_stricmp(spawnVars[i][0], "name"))
    Q_strncpyz(name, spawnVars[i][1], MAX_QPATH);

   if (!Q_stricmp(spawnVars[i][0], "origin"))
   {
    sscanf(spawnVars[i][1], "%f %f %f", &origin[0], &origin[1], &origin[2]);
    originSet = qtrue;
   }
   else if (!Q_stricmp(spawnVars[i][0], "radius"))
   {
    sscanf(spawnVars[i][1], "%f", &parallaxRadius);
   }
  }

  if (isCubemap && originSet)
  {
   cubemap_t *cubemap = &tr.cubemaps[numCubemaps];
   Q_strncpyz(cubemap->name, name, MAX_QPATH);
   VectorCopy(origin, cubemap->origin);
   cubemap->parallaxRadius = parallaxRadius;
   numCubemaps++;
  }
 }
}
