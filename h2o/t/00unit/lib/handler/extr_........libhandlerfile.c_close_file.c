
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * ref; } ;
struct st_h2o_sendfile_generator_t {TYPE_1__ file; } ;


 int h2o_filecache_close_file (int *) ;

__attribute__((used)) static void close_file(struct st_h2o_sendfile_generator_t *self)
{
    if (self->file.ref != ((void*)0)) {
        h2o_filecache_close_file(self->file.ref);
        self->file.ref = ((void*)0);
    }
}
