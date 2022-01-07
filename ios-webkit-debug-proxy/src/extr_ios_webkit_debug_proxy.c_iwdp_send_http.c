
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* ws_t ;
typedef int ws_status ;
struct TYPE_5__ {int (* send_data ) (TYPE_1__*,char*,int ) ;int (* on_error ) (TYPE_1__*,char*) ;} ;


 scalar_t__ asprintf (char**,char*,char const*,int ,char*,char*,char const*) ;
 int free (char*) ;
 int iwdp_get_content_type (char const*,int,char**) ;
 int strlen (char const*) ;
 int stub1 (TYPE_1__*,char*) ;
 int stub2 (TYPE_1__*,char*,int ) ;

ws_status iwdp_send_http(ws_t ws, bool is_head, const char *status,
    const char *resource, const char *content) {
  char *ctype;
  iwdp_get_content_type(resource, 0, &ctype);
  char *data;
  if (asprintf(&data,
      "HTTP/1.1 %s\r\n"
      "Content-length: %zd\r\n"
      "Connection: close"
      "%s%s\r\n\r\n%s",
      status, (content ? strlen(content) : 0),
      (ctype ? "\r\nContent-Type: " : ""), (ctype ? ctype : ""),
      (content && !is_head ? content : "")) < 0) {
    return ws->on_error(ws, "asprintf failed");
  }
  free(ctype);
  ws_status ret = ws->send_data(ws, data, strlen(data));
  free(data);
  return ret;
}
