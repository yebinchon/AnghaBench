
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* ws_private_t ;
struct ws_private {int dummy; } ;
struct TYPE_5__ {struct TYPE_5__* req_host; struct TYPE_5__* sec_answer; struct TYPE_5__* sec_key; struct TYPE_5__* protocol; struct TYPE_5__* http_version; struct TYPE_5__* resource; struct TYPE_5__* method; int data; int out; int in; } ;


 int cb_free (int ) ;
 int free (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;

void ws_private_free(ws_private_t my) {
  if (my) {
    cb_free(my->in);
    cb_free(my->out);
    cb_free(my->data);
    free(my->method);
    free(my->resource);
    free(my->http_version);
    free(my->protocol);
    free(my->sec_key);
    free(my->sec_answer);
    free(my->req_host);
    memset(my, 0, sizeof(struct ws_private));
    free(my);
  }
}
