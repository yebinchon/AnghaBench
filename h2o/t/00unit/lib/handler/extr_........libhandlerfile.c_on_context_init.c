
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int h2o_handler_t ;
struct TYPE_2__ {int mimemap; } ;
typedef TYPE_1__ h2o_file_handler_t ;
typedef int h2o_context_t ;


 int h2o_mimemap_on_context_init (int ,int *) ;

__attribute__((used)) static void on_context_init(h2o_handler_t *_self, h2o_context_t *ctx)
{
    h2o_file_handler_t *self = (void *)_self;

    h2o_mimemap_on_context_init(self->mimemap, ctx);
}
