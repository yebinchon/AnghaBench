
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {char* scalar; } ;
struct TYPE_12__ {scalar_t__ type; TYPE_1__ data; } ;
typedef TYPE_2__ yoml_t ;
typedef int uint16_t ;
struct TYPE_13__ {char* base; int len; } ;
typedef TYPE_3__ h2o_iovec_t ;
typedef int h2o_configurator_command_t ;


 scalar_t__ YOML_TYPE_SCALAR ;
 int free (TYPE_3__*) ;
 TYPE_3__ h2o_concat_list (int *,TYPE_3__*,size_t) ;
 int h2o_configurator_errprintf (int *,TYPE_2__*,char*) ;
 TYPE_3__* h2o_mem_alloc (int) ;
 int h2o_strtolower (char*,size_t) ;
 int htons (size_t) ;
 size_t strlen (char*) ;

__attribute__((used)) static h2o_iovec_t *build_http2_origin_frame(h2o_configurator_command_t *cmd, yoml_t **origins, size_t nr_origins)
{
    size_t i;
    h2o_iovec_t *http2_origin_frame = h2o_mem_alloc(sizeof(*http2_origin_frame));
    uint16_t lengths[nr_origins];
    h2o_iovec_t elems[nr_origins * 2];
    for (i = 0; i < nr_origins; i++) {
        yoml_t *origin = origins[i];
        if (origin->type != YOML_TYPE_SCALAR) {
            h2o_configurator_errprintf(cmd, origin, "element of a sequence passed to http2-origin-frame must be a scalar");
            free(http2_origin_frame);
            return ((void*)0);
        }
        size_t origin_len = strlen(origins[i]->data.scalar);
        lengths[i] = htons(origin_len);
        elems[i * 2].base = (char *)&lengths[i];
        elems[i * 2].len = 2;
        elems[i * 2 + 1].base = origins[i]->data.scalar;
        elems[i * 2 + 1].len = origin_len;
        h2o_strtolower(elems[i * 2 + 1].base, origin_len);
    }
    *http2_origin_frame = h2o_concat_list(((void*)0), elems, nr_origins * 2);
    return http2_origin_frame;
}
