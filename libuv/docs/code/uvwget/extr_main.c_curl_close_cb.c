
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ data; } ;
typedef TYPE_1__ uv_handle_t ;
typedef int curl_context_t ;


 int free (int *) ;

void curl_close_cb(uv_handle_t *handle) {
    curl_context_t *context = (curl_context_t*) handle->data;
    free(context);
}
