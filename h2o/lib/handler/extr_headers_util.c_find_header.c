
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_8__ {int * entries; } ;
typedef TYPE_1__ h2o_headers_t ;
struct TYPE_9__ {TYPE_3__* name; } ;
typedef TYPE_2__ h2o_headers_command_t ;
typedef int h2o_header_t ;
struct TYPE_10__ {int len; int base; } ;


 int h2o_find_header (TYPE_1__*,void*,int) ;
 int h2o_find_header_by_str (TYPE_1__*,int ,int ,int) ;
 scalar_t__ h2o_iovec_is_token (TYPE_3__*) ;

__attribute__((used)) static h2o_header_t *find_header(h2o_headers_t *headers, h2o_headers_command_t *cmd)
{
    ssize_t index;

    if (h2o_iovec_is_token(cmd->name)) {
        index = h2o_find_header(headers, (void *)cmd->name, -1);
    } else {
        index = h2o_find_header_by_str(headers, cmd->name->base, cmd->name->len, -1);
    }
    if (index == -1)
        return ((void*)0);
    return headers->entries + index;
}
