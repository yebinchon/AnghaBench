
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ size; scalar_t__ entries; } ;
struct st_gzip_context_t {TYPE_1__ bufs; } ;


 int BUF_SIZE ;
 int h2o_mem_alloc (int ) ;
 int h2o_sendvec_init_raw (scalar_t__,int ,int ) ;
 int h2o_vector_reserve (int *,TYPE_1__*,scalar_t__) ;

__attribute__((used)) static void expand_buf(struct st_gzip_context_t *self)
{
    h2o_vector_reserve(((void*)0), &self->bufs, self->bufs.size + 1);
    h2o_sendvec_init_raw(self->bufs.entries + self->bufs.size++, h2o_mem_alloc(BUF_SIZE), 0);
}
