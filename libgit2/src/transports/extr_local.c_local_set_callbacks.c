
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* message_cb_payload; void* error_cb; void* progress_cb; } ;
typedef TYPE_1__ transport_local ;
typedef void* git_transport_message_cb ;
typedef int git_transport_certificate_check_cb ;
typedef int git_transport ;


 int GIT_UNUSED (int ) ;

__attribute__((used)) static int local_set_callbacks(
 git_transport *transport,
 git_transport_message_cb progress_cb,
 git_transport_message_cb error_cb,
 git_transport_certificate_check_cb certificate_check_cb,
 void *message_cb_payload)
{
 transport_local *t = (transport_local *)transport;

 GIT_UNUSED(certificate_check_cb);

 t->progress_cb = progress_cb;
 t->error_cb = error_cb;
 t->message_cb_payload = message_cb_payload;

 return 0;
}
