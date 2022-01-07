
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {size_t size; TYPE_1__* entries; } ;
typedef TYPE_2__ h2o_headers_t ;
struct TYPE_9__ {TYPE_6__* name; } ;
typedef TYPE_3__ h2o_headers_command_t ;
struct TYPE_10__ {int len; int base; } ;
struct TYPE_7__ {TYPE_6__* name; } ;


 scalar_t__ h2o_iovec_is_token (TYPE_6__*) ;
 scalar_t__ h2o_memis (int ,int ,int ,int ) ;

__attribute__((used)) static void remove_header(h2o_headers_t *headers, h2o_headers_command_t *cmd)
{
    size_t src, dst = 0;

    for (src = 0; src != headers->size; ++src) {
        if (h2o_iovec_is_token(cmd->name)) {
            if (headers->entries[src].name == cmd->name)
                continue;
        } else {
            if (h2o_memis(headers->entries[src].name->base, headers->entries[src].name->len, cmd->name->base, cmd->name->len))
                continue;
        }

        if (dst != src)
            headers->entries[dst] = headers->entries[src];
        ++dst;
    }
    headers->size = dst;
}
