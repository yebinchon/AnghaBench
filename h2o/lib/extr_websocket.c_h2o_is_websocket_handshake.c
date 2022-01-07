
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_15__ {TYPE_5__* entries; } ;
struct TYPE_11__ {int len; int * base; } ;
struct TYPE_9__ {int len; int base; } ;
struct TYPE_10__ {TYPE_1__ method; } ;
struct TYPE_14__ {TYPE_8__ headers; TYPE_3__ upgrade; TYPE_2__ input; } ;
typedef TYPE_6__ h2o_req_t ;
struct TYPE_12__ {int len; char* base; } ;
struct TYPE_13__ {TYPE_4__ value; } ;


 int H2O_STRLIT (char*) ;
 int h2o_find_header_by_str (TYPE_8__*,int ,int) ;
 scalar_t__ h2o_lcstris (int *,int ,int ) ;
 scalar_t__ h2o_memis (int ,int ,int ) ;

int h2o_is_websocket_handshake(h2o_req_t *req, const char **ws_client_key)
{
    ssize_t key_header_index;

    *ws_client_key = ((void*)0);


    if (h2o_memis(req->input.method.base, req->input.method.len, H2O_STRLIT("GET"))) {

    } else {
        return 0;
    }


    if (req->upgrade.base != ((void*)0) && h2o_lcstris(req->upgrade.base, req->upgrade.len, H2O_STRLIT("websocket"))) {

    } else {
        return 0;
    }

    if ((key_header_index = h2o_find_header_by_str(&req->headers, H2O_STRLIT("sec-websocket-key"), -1)) != -1) {
        if (req->headers.entries[key_header_index].value.len != 24) {
            return -1;
        }
    } else {
        return 0;
    }

    *ws_client_key = req->headers.entries[key_header_index].value.base;
    return 0;
}
