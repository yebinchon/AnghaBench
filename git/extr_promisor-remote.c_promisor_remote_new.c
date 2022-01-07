
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct promisor_remote {struct promisor_remote* next; } ;


 int FLEX_ALLOC_STR (struct promisor_remote*,int ,char const*) ;
 int _ (char*) ;
 int name ;
 struct promisor_remote** promisors_tail ;
 int warning (int ,char const*) ;

__attribute__((used)) static struct promisor_remote *promisor_remote_new(const char *remote_name)
{
 struct promisor_remote *r;

 if (*remote_name == '/') {
  warning(_("promisor remote name cannot begin with '/': %s"),
   remote_name);
  return ((void*)0);
 }

 FLEX_ALLOC_STR(r, name, remote_name);

 *promisors_tail = r;
 promisors_tail = &r->next;

 return r;
}
