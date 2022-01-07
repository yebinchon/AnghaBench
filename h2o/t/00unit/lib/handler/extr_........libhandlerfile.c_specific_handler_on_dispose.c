
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int base; } ;
struct st_h2o_specific_file_handler_t {int mime_type; TYPE_1__ real_path; } ;
typedef int h2o_handler_t ;


 int free (int ) ;
 int h2o_mem_release_shared (int ) ;

__attribute__((used)) static void specific_handler_on_dispose(h2o_handler_t *_self)
{
    struct st_h2o_specific_file_handler_t *self = (void *)_self;

    free(self->real_path.base);
    h2o_mem_release_shared(self->mime_type);
}
