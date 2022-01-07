
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ws_t ;
typedef int ws_status ;


 int iwdp_on_devtools_request (int ,char const*) ;
 int iwdp_on_list_request (int ,int,int,char const*) ;
 int iwdp_on_not_found (int ,int,char const*,char*) ;
 int iwdp_on_static_request (int ,int,char const*,int*) ;
 int strcmp (char const*,char*) ;
 int strlen (char const*) ;
 int strncmp (char const*,char*,int) ;

ws_status iwdp_on_http_request(ws_t ws,
    const char *method, const char *resource, const char *version,
    const char *host, const char *headers, size_t headers_length,
    bool is_websocket, bool *to_keep_alive) {
  bool is_get = !strcmp(method, "GET");
  bool is_head = !is_get && !strcmp(method, "HEAD");
  if (is_websocket) {
    if (is_get && !strncmp(resource, "/devtools/page/", 15)) {
      return iwdp_on_devtools_request(ws, resource);
    }
  } else {
    if (!is_get && !is_head) {
      return iwdp_on_not_found(ws, is_head, resource, "Method Not Allowed");
    }

    if (!strlen(resource) || !strcmp(resource, "/")) {
      return iwdp_on_list_request(ws, is_head, 0, host);
    } else if (!strcmp(resource, "/json") || !strcmp(resource, "/json/list")) {
      return iwdp_on_list_request(ws, is_head, 1, host);
    } else if (!strncmp(resource, "/devtools/", 10)) {
      return iwdp_on_static_request(ws, is_head, resource,
          to_keep_alive);
    }





  }
  return iwdp_on_not_found(ws, is_head, resource, ((void*)0));
}
