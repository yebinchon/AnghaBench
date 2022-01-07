
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct promisor_remote {int name; struct promisor_remote* next; } ;


 struct promisor_remote* promisors ;
 int strcmp (int ,char const*) ;

__attribute__((used)) static struct promisor_remote *promisor_remote_lookup(const char *remote_name,
            struct promisor_remote **previous)
{
 struct promisor_remote *r, *p;

 for (p = ((void*)0), r = promisors; r; p = r, r = r->next)
  if (!strcmp(r->name, remote_name)) {
   if (previous)
    *previous = p;
   return r;
  }

 return ((void*)0);
}
