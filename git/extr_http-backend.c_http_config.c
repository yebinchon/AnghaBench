
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; } ;
struct rpc_service {int enabled; int config_name; } ;


 int ARRAY_SIZE (struct rpc_service*) ;
 struct strbuf STRBUF_INIT ;
 int getanyfile ;
 int git_config_get_bool (char*,int*) ;
 int git_config_get_ulong (char*,int *) ;
 int max_request_buffer ;
 struct rpc_service* rpc_service ;
 int strbuf_addf (struct strbuf*,char*,int ) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (struct strbuf*) ;

__attribute__((used)) static void http_config(void)
{
 int i, value = 0;
 struct strbuf var = STRBUF_INIT;

 git_config_get_bool("http.getanyfile", &getanyfile);
 git_config_get_ulong("http.maxrequestbuffer", &max_request_buffer);

 for (i = 0; i < ARRAY_SIZE(rpc_service); i++) {
  struct rpc_service *svc = &rpc_service[i];
  strbuf_addf(&var, "http.%s", svc->config_name);
  if (!git_config_get_bool(var.buf, &value))
   svc->enabled = value;
  strbuf_reset(&var);
 }

 strbuf_release(&var);
}
