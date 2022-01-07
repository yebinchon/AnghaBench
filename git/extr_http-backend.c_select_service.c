
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct rpc_service {char const* name; scalar_t__ enabled; } ;


 int ARRAY_SIZE (struct rpc_service*) ;
 int forbidden (struct strbuf*,char*,char const*) ;
 char* getenv (char*) ;
 struct rpc_service* rpc_service ;
 int skip_prefix (char const*,char*,char const**) ;
 int strcmp (char const*,char const*) ;

__attribute__((used)) static struct rpc_service *select_service(struct strbuf *hdr, const char *name)
{
 const char *svc_name;
 struct rpc_service *svc = ((void*)0);
 int i;

 if (!skip_prefix(name, "git-", &svc_name))
  forbidden(hdr, "Unsupported service: '%s'", name);

 for (i = 0; i < ARRAY_SIZE(rpc_service); i++) {
  struct rpc_service *s = &rpc_service[i];
  if (!strcmp(s->name, svc_name)) {
   svc = s;
   break;
  }
 }

 if (!svc)
  forbidden(hdr, "Unsupported service: '%s'", name);

 if (svc->enabled < 0) {
  const char *user = getenv("REMOTE_USER");
  svc->enabled = (user && *user) ? 1 : 0;
 }
 if (!svc->enabled)
  forbidden(hdr, "Service not enabled: '%s'", svc->name);
 return svc;
}
