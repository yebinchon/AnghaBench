
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int curl_socket_t ;
struct TYPE_5__ {TYPE_1__* data; } ;
struct TYPE_4__ {TYPE_2__ poll_handle; int sockfd; } ;
typedef TYPE_1__ curl_context_t ;


 int assert (int) ;
 int loop ;
 scalar_t__ malloc (int) ;
 int uv_poll_init_socket (int ,TYPE_2__*,int ) ;

curl_context_t *create_curl_context(curl_socket_t sockfd) {
    curl_context_t *context;

    context = (curl_context_t*) malloc(sizeof *context);

    context->sockfd = sockfd;

    int r = uv_poll_init_socket(loop, &context->poll_handle, sockfd);
    assert(r == 0);
    context->poll_handle.data = context;

    return context;
}
