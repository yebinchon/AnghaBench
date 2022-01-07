
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uv_req_type ;
struct TYPE_3__ {int type; } ;
typedef TYPE_1__ uv_req_t ;



uv_req_type uv_req_get_type(const uv_req_t* req) {
  return req->type;
}
