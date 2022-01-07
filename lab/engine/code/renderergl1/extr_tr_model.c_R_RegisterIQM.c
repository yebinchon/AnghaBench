
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int qhandle_t ;
typedef int qboolean ;
struct TYPE_5__ {int index; void* type; } ;
typedef TYPE_1__ model_t ;
struct TYPE_6__ {int (* FS_ReadFile ) (char const*,void**) ;int (* Printf ) (int ,char*,char const*) ;int (* FS_FreeFile ) (void*) ;} ;


 void* MOD_BAD ;
 int PRINT_WARNING ;
 int R_LoadIQM (TYPE_1__*,unsigned int*,int,char const*) ;
 int qfalse ;
 TYPE_2__ ri ;
 int stub1 (char const*,void**) ;
 int stub2 (void*) ;
 int stub3 (int ,char*,char const*) ;

qhandle_t R_RegisterIQM(const char *name, model_t *mod)
{
 union {
  unsigned *u;
  void *v;
 } buf;
 qboolean loaded = qfalse;
 int filesize;

 filesize = ri.FS_ReadFile(name, (void **) &buf.v);
 if(!buf.u)
 {
  mod->type = MOD_BAD;
  return 0;
 }

 loaded = R_LoadIQM(mod, buf.u, filesize, name);

 ri.FS_FreeFile (buf.v);

 if(!loaded)
 {
  ri.Printf(PRINT_WARNING,"R_RegisterIQM: couldn't load iqm file %s\n", name);
  mod->type = MOD_BAD;
  return 0;
 }

 return mod->index;
}
