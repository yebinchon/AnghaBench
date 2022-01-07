
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int yoml_t ;
struct st_h2o_access_log_configurator_t {TYPE_1__* handles; } ;
typedef int h2o_configurator_t ;
struct TYPE_5__ {int * pathconf; } ;
typedef TYPE_2__ h2o_configurator_context_t ;
typedef int h2o_access_log_filehandle_t ;
struct TYPE_4__ {size_t size; int ** entries; } ;


 int free (int **) ;
 int h2o_access_log_register (int *,int *) ;
 int h2o_mem_release_shared (int *) ;

__attribute__((used)) static int on_config_exit(h2o_configurator_t *_self, h2o_configurator_context_t *ctx, yoml_t *node)
{
    struct st_h2o_access_log_configurator_t *self = (void *)_self;
    size_t i;


    for (i = 0; i != self->handles->size; ++i) {
        h2o_access_log_filehandle_t *fh = self->handles->entries[i];
        if (ctx->pathconf != ((void*)0))
            h2o_access_log_register(ctx->pathconf, fh);
        h2o_mem_release_shared(fh);
    }

    free(self->handles->entries);


    --self->handles;

    return 0;
}
