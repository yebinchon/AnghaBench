
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uv_poll_t ;
struct TYPE_2__ {int sockfd; } ;
typedef TYPE_1__ curl_context_t ;


 int CURL_CSELECT_ERR ;
 int CURL_CSELECT_IN ;
 int CURL_CSELECT_OUT ;
 int UV_READABLE ;
 int UV_WRITABLE ;
 int check_multi_info () ;
 int curl_handle ;
 int curl_multi_socket_action (int ,int ,int,int*) ;
 int timeout ;
 int uv_timer_stop (int *) ;

void curl_perform(uv_poll_t *req, int status, int events) {
    uv_timer_stop(&timeout);
    int running_handles;
    int flags = 0;
    if (status < 0) flags = CURL_CSELECT_ERR;
    if (!status && events & UV_READABLE) flags |= CURL_CSELECT_IN;
    if (!status && events & UV_WRITABLE) flags |= CURL_CSELECT_OUT;

    curl_context_t *context;

    context = (curl_context_t*)req;

    curl_multi_socket_action(curl_handle, context->sockfd, flags, &running_handles);
    check_multi_info();
}
