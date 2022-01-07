
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ssize_t ;
typedef int h2o_token_t ;
struct TYPE_9__ {TYPE_2__* entries; } ;
struct TYPE_8__ {TYPE_4__ headers; } ;
typedef TYPE_3__ h2o_res_t ;
struct TYPE_6__ {int len; int base; } ;
struct TYPE_7__ {TYPE_1__ value; } ;


 int h2o_find_header (TYPE_4__*,int const*,int) ;
 int h2o_lcstris (int ,int ,char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static int check_header(h2o_res_t *res, const h2o_token_t *header_name, const char *expected)
{
    ssize_t index = h2o_find_header(&res->headers, header_name, -1);
    if (index == -1)
        return 0;
    return h2o_lcstris(res->headers.entries[index].value.base, res->headers.entries[index].value.len, expected, strlen(expected));
}
