
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
typedef int h2o_mem_pool_t ;
struct TYPE_10__ {int len; } ;
typedef TYPE_2__ h2o_iovec_t ;
struct TYPE_11__ {scalar_t__ size; TYPE_4__* entries; } ;
typedef TYPE_3__ h2o_headers_t ;
struct TYPE_9__ {char* base; size_t len; } ;
struct TYPE_12__ {int flags; int * orig_name; TYPE_1__ value; TYPE_2__* name; } ;
typedef TYPE_4__ h2o_header_t ;
typedef int h2o_header_flags_t ;
struct TYPE_13__ {int * base; } ;


 TYPE_6__ h2o_strdup (int *,char const*,int ) ;
 int h2o_vector_reserve (int *,TYPE_3__*,scalar_t__) ;

__attribute__((used)) static ssize_t add_header(h2o_mem_pool_t *pool, h2o_headers_t *headers, h2o_iovec_t *name, const char *orig_name, const char *value,
                          size_t value_len, h2o_header_flags_t flags)
{
    h2o_header_t *slot;

    h2o_vector_reserve(pool, headers, headers->size + 1);
    slot = headers->entries + headers->size++;

    slot->name = name;
    slot->value.base = (char *)value;
    slot->value.len = value_len;
    slot->orig_name = orig_name ? h2o_strdup(pool, orig_name, name->len).base : ((void*)0);
    slot->flags = flags;
    return headers->size - 1;
}
