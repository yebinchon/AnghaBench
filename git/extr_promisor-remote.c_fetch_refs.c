
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transport {int dummy; } ;
struct remote {int * url; } ;
struct ref {int dummy; } ;


 int TRANS_OPT_FROM_PROMISOR ;
 int TRANS_OPT_NO_DEPENDENTS ;
 int _ (char*) ;
 int die (int ) ;
 int fetch_if_missing ;
 struct remote* remote_get (char const*) ;
 int transport_fetch_refs (struct transport*,struct ref*) ;
 struct transport* transport_get (struct remote*,int ) ;
 int transport_set_option (struct transport*,int ,char*) ;

__attribute__((used)) static int fetch_refs(const char *remote_name, struct ref *ref)
{
 struct remote *remote;
 struct transport *transport;
 int original_fetch_if_missing = fetch_if_missing;
 int res;

 fetch_if_missing = 0;
 remote = remote_get(remote_name);
 if (!remote->url[0])
  die(_("Remote with no URL"));
 transport = transport_get(remote, remote->url[0]);

 transport_set_option(transport, TRANS_OPT_FROM_PROMISOR, "1");
 transport_set_option(transport, TRANS_OPT_NO_DEPENDENTS, "1");
 res = transport_fetch_refs(transport, ref);
 fetch_if_missing = original_fetch_if_missing;

 return res;
}
