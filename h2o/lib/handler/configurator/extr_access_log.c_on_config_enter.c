
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int yoml_t ;
struct st_h2o_access_log_configurator_t {TYPE_1__* handles; } ;
typedef int h2o_configurator_t ;
typedef int h2o_configurator_context_t ;
typedef int h2o_access_log_filehandle_t ;
struct TYPE_3__ {int size; int ** entries; } ;


 int h2o_mem_addref_shared (int *) ;
 int h2o_vector_reserve (int *,TYPE_1__*,int) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static int on_config_enter(h2o_configurator_t *_self, h2o_configurator_context_t *ctx, yoml_t *node)
{
    struct st_h2o_access_log_configurator_t *self = (void *)_self;
    size_t i;


    ++self->handles;


    memset(self->handles, 0, sizeof(*self->handles));
    h2o_vector_reserve(((void*)0), self->handles, self->handles[-1].size + 1);
    for (i = 0; i != self->handles[-1].size; ++i) {
        h2o_access_log_filehandle_t *fh = self->handles[-1].entries[i];
        self->handles[0].entries[self->handles[0].size++] = fh;
        h2o_mem_addref_shared(fh);
    }

    return 0;
}
