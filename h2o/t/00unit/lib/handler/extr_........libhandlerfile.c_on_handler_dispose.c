
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int h2o_handler_t ;
struct TYPE_6__ {int * base; } ;
struct TYPE_5__ {int * base; } ;
struct TYPE_8__ {TYPE_3__* index_files; int mimemap; TYPE_2__ real_path; TYPE_1__ conf_path; } ;
typedef TYPE_4__ h2o_file_handler_t ;
struct TYPE_7__ {int * base; } ;


 int free (int *) ;
 int h2o_mem_release_shared (int ) ;

__attribute__((used)) static void on_handler_dispose(h2o_handler_t *_self)
{
    h2o_file_handler_t *self = (void *)_self;
    size_t i;

    free(self->conf_path.base);
    free(self->real_path.base);
    h2o_mem_release_shared(self->mimemap);
    for (i = 0; self->index_files[i].base != ((void*)0); ++i)
        free(self->index_files[i].base);
}
