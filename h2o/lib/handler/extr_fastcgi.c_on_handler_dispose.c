
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int h2o_handler_t ;
struct TYPE_7__ {int base; } ;
struct TYPE_6__ {int data; int (* dispose ) (TYPE_4__*,int ) ;} ;
struct TYPE_8__ {TYPE_2__ document_root; TYPE_1__ callbacks; } ;
struct TYPE_9__ {TYPE_3__ config; int sockpool; } ;
typedef TYPE_4__ h2o_fastcgi_handler_t ;


 int free (int ) ;
 int h2o_socketpool_dispose (int *) ;
 int stub1 (TYPE_4__*,int ) ;

__attribute__((used)) static void on_handler_dispose(h2o_handler_t *_handler)
{
    h2o_fastcgi_handler_t *handler = (void *)_handler;

    if (handler->config.callbacks.dispose != ((void*)0))
        handler->config.callbacks.dispose(handler, handler->config.callbacks.data);

    h2o_socketpool_dispose(&handler->sockpool);
    free(handler->config.document_root.base);
}
