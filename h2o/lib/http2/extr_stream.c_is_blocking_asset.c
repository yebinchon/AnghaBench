
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* mime_attr; } ;
struct TYPE_8__ {TYPE_2__ res; } ;
typedef TYPE_3__ h2o_req_t ;
struct TYPE_6__ {scalar_t__ priority; } ;


 scalar_t__ H2O_MIME_ATTRIBUTE_PRIORITY_HIGHEST ;
 int h2o_req_fill_mime_attributes (TYPE_3__*) ;

__attribute__((used)) static int is_blocking_asset(h2o_req_t *req)
{
    if (req->res.mime_attr == ((void*)0))
        h2o_req_fill_mime_attributes(req);
    return req->res.mime_attr->priority == H2O_MIME_ATTRIBUTE_PRIORITY_HIGHEST;
}
