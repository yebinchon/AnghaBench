
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int qboolean ;
typedef int md3Header_t ;
struct TYPE_9__ {int * (* Malloc ) (size_t) ;} ;
struct TYPE_7__ {int (* clear_model ) (int ) ;int (* model_getters ) (int ,int *,void**) ;int (* find_model ) (int ,char const*) ;} ;
struct TYPE_6__ {size_t (* serialised_model_size ) (int *,void*) ;int (* serialise_model ) (int *,void*,int *) ;} ;
struct TYPE_8__ {int userdata; TYPE_2__ hooks; TYPE_1__ calls; } ;
typedef int DeepmindModelGetters ;
typedef TYPE_3__ DeepmindContext ;


 TYPE_3__* dmlab_context () ;
 int qfalse ;
 int qtrue ;
 TYPE_4__ ri ;
 int stub1 (int ,char const*) ;
 int stub2 (int ,int *,void**) ;
 size_t stub3 (int *,void*) ;
 int * stub4 (size_t) ;
 int stub5 (int *,void*,int *) ;
 int stub6 (int ) ;

qboolean R_DMLabToMD3(const char *mod_name, md3Header_t **mod_md3) {
  DeepmindContext *ctx = dmlab_context();


  if (!ctx->hooks.find_model(ctx->userdata, mod_name)) {
    return qfalse;
  }


  DeepmindModelGetters model_getters;
  void* model_data;
  ctx->hooks.model_getters(ctx->userdata, &model_getters, &model_data);


  size_t buffer_len =
      ctx->calls.serialised_model_size(&model_getters, model_data);


  *mod_md3 = ri.Malloc(buffer_len);


  ctx->calls.serialise_model(&model_getters, model_data, *mod_md3);


  ctx->hooks.clear_model(ctx->userdata);

  return qtrue;
}
