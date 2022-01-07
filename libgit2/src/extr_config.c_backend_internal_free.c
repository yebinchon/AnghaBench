
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int (* free ) (TYPE_1__*) ;} ;
typedef TYPE_1__ git_config_backend ;
struct TYPE_7__ {TYPE_1__* backend; } ;
typedef TYPE_2__ backend_internal ;


 int git__free (TYPE_2__*) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static void backend_internal_free(backend_internal *internal)
{
 git_config_backend *backend;

 backend = internal->backend;
 backend->free(backend);
 git__free(internal);
}
