
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int (* Request_from_raw ) (int *,char*,size_t,char*,size_t,int,void*,size_t) ;int RequestType; } ;
struct TYPE_5__ {int static_request; } ;
typedef TYPE_1__ Protocol ;


 int Request_dealloc (int *) ;
 int Request_new (int ,int *) ;
 TYPE_2__* request_capi ;
 int stub1 (int *,char*,size_t,char*,size_t,int,void*,size_t) ;

Protocol*
Protocol_on_headers(Protocol* self, char* method, size_t method_len,
                    char* path, size_t path_len, int minor_version,
                    void* headers, size_t num_headers)
{
  Protocol* result = self;

  Request_dealloc(&self->static_request);
  Request_new(request_capi->RequestType, &self->static_request);

  request_capi->Request_from_raw(
    &self->static_request, method, method_len, path, path_len, minor_version,
    headers, num_headers);

  goto finally;

  finally:
  return result;
}
