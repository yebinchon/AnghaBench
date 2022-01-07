
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int qhandle_t ;
typedef scalar_t__ qboolean ;
typedef int namebuf ;
struct TYPE_8__ {int type; int index; int numLods; } ;
typedef TYPE_1__ model_t ;
struct TYPE_9__ {int ofsEnd; } ;
typedef TYPE_2__ md3Header_t ;
typedef int byte ;
struct TYPE_10__ {int (* Printf ) (int ,char*,char const*) ;int (* Free ) (TYPE_2__*) ;} ;


 int Com_sprintf (char*,int,char*,char const*,...) ;
 int MAX_QPATH ;
 int MD3_MAX_LODS ;
 int MOD_BAD ;
 int MOD_MESH ;
 int PRINT_WARNING ;
 scalar_t__ R_DMLabToMD3 (char const*,TYPE_2__**) ;
 scalar_t__ R_LoadMD3 (TYPE_1__*,int,int *,int ,char const*,char*) ;
 scalar_t__ qfalse ;
 TYPE_4__ ri ;
 int stub1 (TYPE_2__*) ;
 int stub2 (int ,char*,char const*) ;

qhandle_t R_RegisterDMLab(const char *name, model_t *mod)
{
 int lod;
 char namebuf[MAX_QPATH + 20];
 md3Header_t *mod_md3;
 qboolean loaded = qfalse;

 for ( lod = 0 ; lod < MD3_MAX_LODS ; ++lod )
 {
  if ( lod != 0 )
   Com_sprintf(namebuf, sizeof(namebuf), "%s_%d", name, lod);
  else
   Com_sprintf(namebuf, sizeof(namebuf), "%s", name);

  if ( R_DMLabToMD3( name, &mod_md3 ) )
  {
   loaded = R_LoadMD3( mod, lod, (byte *)mod_md3, mod_md3->ofsEnd, name, "" );
   ri.Free( mod_md3 );
  }

  if ( loaded )
   mod->numLods++;
  else
   break;
 }

 if ( lod > 0 )
 {
  mod->type = MOD_MESH;
  return mod->index;
 }





 mod->type = MOD_BAD;
 return 0;
}
