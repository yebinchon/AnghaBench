
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* ws_t ;
typedef int ws_status ;
struct TYPE_5__ {int (* on_error ) (TYPE_1__*,char*) ;} ;


 scalar_t__ asprintf (char**,char*,char const*,char const*) ;
 int free (char*) ;
 int iwdp_send_http (TYPE_1__*,int,char*,char*,char*) ;
 int stub1 (TYPE_1__*,char*) ;

ws_status iwdp_on_not_found(ws_t ws, bool is_head, const char *resource,
    const char *details) {
  char *content;
  if (asprintf(&content,
      "<html><title>Error 404 (Not Found)</title>\n"
      "<p><b>404.</b> <ins>That's an error.</ins>\n"
      "<p>The requested URL <code>%s</code> was not found.\n"
      "%s</html>", resource, (details ? details : "")) < 0) {
    return ws->on_error(ws, "asprintf failed");
  }
  ws_status ret = iwdp_send_http(ws, is_head, "404 Not Found", ".html",
      content);
  free(content);
  return ret;
}
