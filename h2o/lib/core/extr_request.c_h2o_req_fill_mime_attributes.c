
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_16__ {TYPE_2__* entries; } ;
struct TYPE_13__ {int * mime_attr; TYPE_9__ headers; } ;
struct TYPE_14__ {TYPE_4__ res; TYPE_1__* pathconf; } ;
typedef TYPE_5__ h2o_req_t ;
struct TYPE_12__ {int attr; } ;
struct TYPE_15__ {TYPE_3__ data; } ;
typedef TYPE_6__ h2o_mimemap_type_t ;
struct TYPE_11__ {int value; } ;
struct TYPE_10__ {int mimemap; } ;


 int H2O_TOKEN_CONTENT_TYPE ;
 int h2o_find_header (TYPE_9__*,int ,int) ;
 int h2o_mime_attributes_as_is ;
 TYPE_6__* h2o_mimemap_get_type_by_mimetype (int ,int ,int ) ;

void h2o_req_fill_mime_attributes(h2o_req_t *req)
{
    ssize_t content_type_index;
    h2o_mimemap_type_t *mime;

    if (req->res.mime_attr != ((void*)0))
        return;

    if ((content_type_index = h2o_find_header(&req->res.headers, H2O_TOKEN_CONTENT_TYPE, -1)) != -1 &&
        (mime = h2o_mimemap_get_type_by_mimetype(req->pathconf->mimemap, req->res.headers.entries[content_type_index].value, 0)) !=
            ((void*)0))
        req->res.mime_attr = &mime->data.attr;
    else
        req->res.mime_attr = &h2o_mime_attributes_as_is;
}
