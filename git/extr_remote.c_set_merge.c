
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct remote {int dummy; } ;
struct object_id {int dummy; } ;
struct branch {int merge_nr; int * merge_name; TYPE_1__** merge; int remote_name; } ;
struct TYPE_2__ {char* dst; void* src; } ;


 int dwim_ref (int ,int ,struct object_id*,char**) ;
 int remote_find_tracking (struct remote*,TYPE_1__*) ;
 struct remote* remote_get (int ) ;
 scalar_t__ strcmp (int ,char*) ;
 int strlen (int ) ;
 void* xcalloc (int,int) ;
 void* xstrdup (int ) ;

__attribute__((used)) static void set_merge(struct branch *ret)
{
 struct remote *remote;
 char *ref;
 struct object_id oid;
 int i;

 if (!ret)
  return;
 if (ret->merge)
  return;
 if (!ret->remote_name || !ret->merge_nr) {




  ret->merge_nr = 0;
  return;
 }

 remote = remote_get(ret->remote_name);

 ret->merge = xcalloc(ret->merge_nr, sizeof(*ret->merge));
 for (i = 0; i < ret->merge_nr; i++) {
  ret->merge[i] = xcalloc(1, sizeof(**ret->merge));
  ret->merge[i]->src = xstrdup(ret->merge_name[i]);
  if (!remote_find_tracking(remote, ret->merge[i]) ||
      strcmp(ret->remote_name, "."))
   continue;
  if (dwim_ref(ret->merge_name[i], strlen(ret->merge_name[i]),
        &oid, &ref) == 1)
   ret->merge[i]->dst = ref;
  else
   ret->merge[i]->dst = xstrdup(ret->merge_name[i]);
 }
}
