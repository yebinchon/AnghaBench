
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {size_t size; TYPE_2__* entries; } ;
struct TYPE_6__ {int on_setup_ostream; } ;
struct st_errordoc_filter_t {TYPE_3__ errordocs; TYPE_1__ super; } ;
typedef int h2o_pathconf_t ;
struct TYPE_9__ {int len; int base; } ;
struct TYPE_7__ {TYPE_4__ url; int status; } ;
typedef TYPE_2__ h2o_errordoc_t ;


 scalar_t__ h2o_create_filter (int *,int) ;
 TYPE_4__ h2o_strdup (int *,int ,int ) ;
 int h2o_vector_reserve (int *,TYPE_3__*,size_t) ;
 int on_filter_setup_ostream ;

void h2o_errordoc_register(h2o_pathconf_t *pathconf, h2o_errordoc_t *errdocs, size_t cnt)
{
    struct st_errordoc_filter_t *self = (void *)h2o_create_filter(pathconf, sizeof(*self));
    size_t i;

    self->super.on_setup_ostream = on_filter_setup_ostream;
    h2o_vector_reserve(((void*)0), &self->errordocs, cnt);
    self->errordocs.size = cnt;
    for (i = 0; i != cnt; ++i) {
        const h2o_errordoc_t *src = errdocs + i;
        h2o_errordoc_t *dst = self->errordocs.entries + i;
        dst->status = src->status;
        dst->url = h2o_strdup(((void*)0), src->url.base, src->url.len);
    }
}
