
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_9__ {TYPE_2__* entries; } ;
struct TYPE_8__ {TYPE_5__ headers; } ;
typedef TYPE_3__ h2o_req_t ;
struct TYPE_6__ {int len; int base; } ;
struct TYPE_7__ {TYPE_1__ value; } ;


 int H2O_STRLIT (char*) ;
 int H2O_TOKEN_USER_AGENT ;
 scalar_t__ SIZE_MAX ;
 int h2o_find_header (TYPE_5__*,int ,int) ;
 scalar_t__ h2o_strstr (int ,int ,int ) ;

__attribute__((used)) static int is_msie(h2o_req_t *req)
{
    ssize_t cursor = h2o_find_header(&req->headers, H2O_TOKEN_USER_AGENT, -1);
    if (cursor == -1)
        return 0;
    if (h2o_strstr(req->headers.entries[cursor].value.base, req->headers.entries[cursor].value.len, H2O_STRLIT("; MSIE ")) ==
        SIZE_MAX)
        return 0;
    return 1;
}
